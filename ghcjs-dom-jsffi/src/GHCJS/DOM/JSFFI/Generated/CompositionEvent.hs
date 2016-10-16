{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CompositionEvent
       (js_initCompositionEvent, initCompositionEvent, js_getData,
        getData, CompositionEvent(..), gTypeCompositionEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe
        "$1[\"initCompositionEvent\"]($2,\n$3, $4, $5, $6)"
        js_initCompositionEvent ::
        CompositionEvent ->
          JSString -> Bool -> Bool -> Nullable Window -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CompositionEvent.initCompositionEvent Mozilla CompositionEvent.initCompositionEvent documentation> 
initCompositionEvent ::
                     (MonadIO m, ToJSString typeArg, ToJSString dataArg) =>
                       CompositionEvent ->
                         typeArg -> Bool -> Bool -> Maybe Window -> dataArg -> m ()
initCompositionEvent self typeArg canBubbleArg cancelableArg
  viewArg dataArg
  = liftIO
      (js_initCompositionEvent (self) (toJSString typeArg) canBubbleArg
         cancelableArg
         (maybeToNullable viewArg)
         (toJSString dataArg))
 
foreign import javascript unsafe "$1[\"data\"]" js_getData ::
        CompositionEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CompositionEvent.data Mozilla CompositionEvent.data documentation> 
getData ::
        (MonadIO m, FromJSString result) => CompositionEvent -> m result
getData self = liftIO (fromJSString <$> (js_getData (self)))