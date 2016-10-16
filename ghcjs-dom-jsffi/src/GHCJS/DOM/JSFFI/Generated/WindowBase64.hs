{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WindowBase64
       (js_atob, atob, atob_, js_btoa, btoa, btoa_, WindowBase64(..),
        gTypeWindowBase64)
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
 
foreign import javascript unsafe "$1[\"atob\"]($2)" js_atob ::
        WindowBase64 -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowBase64.atob Mozilla WindowBase64.atob documentation> 
atob ::
     (MonadIO m, ToJSString string, FromJSString result) =>
       WindowBase64 -> string -> m result
atob self string
  = liftIO (fromJSString <$> (js_atob (self) (toJSString string)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowBase64.atob Mozilla WindowBase64.atob documentation> 
atob_ ::
      (MonadIO m, ToJSString string) => WindowBase64 -> string -> m ()
atob_ self string
  = liftIO (void (js_atob (self) (toJSString string)))
 
foreign import javascript unsafe "$1[\"btoa\"]($2)" js_btoa ::
        WindowBase64 -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowBase64.btoa Mozilla WindowBase64.btoa documentation> 
btoa ::
     (MonadIO m, ToJSString string, FromJSString result) =>
       WindowBase64 -> string -> m result
btoa self string
  = liftIO (fromJSString <$> (js_btoa (self) (toJSString string)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowBase64.btoa Mozilla WindowBase64.btoa documentation> 
btoa_ ::
      (MonadIO m, ToJSString string) => WindowBase64 -> string -> m ()
btoa_ self string
  = liftIO (void (js_btoa (self) (toJSString string)))