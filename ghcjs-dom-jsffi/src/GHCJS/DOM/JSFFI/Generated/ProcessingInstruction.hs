{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ProcessingInstruction
       (js_getTarget, getTarget, getTargetUnsafe, getTargetUnchecked,
        js_getSheet, getSheet, getSheetUnsafe, getSheetUnchecked,
        ProcessingInstruction(..), gTypeProcessingInstruction)
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
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        ProcessingInstruction -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.target Mozilla ProcessingInstruction.target documentation> 
getTarget ::
          (MonadIO m, FromJSString result) =>
            ProcessingInstruction -> m (Maybe result)
getTarget self
  = liftIO (fromMaybeJSString <$> (js_getTarget (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.target Mozilla ProcessingInstruction.target documentation> 
getTargetUnsafe ::
                (MonadIO m, HasCallStack, FromJSString result) =>
                  ProcessingInstruction -> m result
getTargetUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getTarget (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.target Mozilla ProcessingInstruction.target documentation> 
getTargetUnchecked ::
                   (MonadIO m, FromJSString result) =>
                     ProcessingInstruction -> m result
getTargetUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getTarget (self)))
 
foreign import javascript unsafe "$1[\"sheet\"]" js_getSheet ::
        ProcessingInstruction -> IO (Nullable StyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.sheet Mozilla ProcessingInstruction.sheet documentation> 
getSheet ::
         (MonadIO m) => ProcessingInstruction -> m (Maybe StyleSheet)
getSheet self = liftIO (nullableToMaybe <$> (js_getSheet (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.sheet Mozilla ProcessingInstruction.sheet documentation> 
getSheetUnsafe ::
               (MonadIO m, HasCallStack) => ProcessingInstruction -> m StyleSheet
getSheetUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getSheet (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.sheet Mozilla ProcessingInstruction.sheet documentation> 
getSheetUnchecked ::
                  (MonadIO m) => ProcessingInstruction -> m StyleSheet
getSheetUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getSheet (self)))