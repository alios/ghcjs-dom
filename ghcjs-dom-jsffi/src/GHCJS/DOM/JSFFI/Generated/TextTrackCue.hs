{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.TextTrackCue
       (js_newTextTrackCue, newTextTrackCue, js_getTrack, getTrack,
        getTrackUnsafe, getTrackUnchecked, js_setId, setId, js_getId,
        getId, js_setStartTime, setStartTime, js_getStartTime,
        getStartTime, js_setEndTime, setEndTime, js_getEndTime, getEndTime,
        js_setPauseOnExit, setPauseOnExit, js_getPauseOnExit,
        getPauseOnExit, enter, exit, TextTrackCue(..), gTypeTextTrackCue,
        IsTextTrackCue, toTextTrackCue)
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
        "new window[\"TextTrackCue\"]($1,\n$2, $3)" js_newTextTrackCue ::
        Double -> Double -> JSString -> IO TextTrackCue

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue Mozilla TextTrackCue documentation> 
newTextTrackCue ::
                (MonadIO m, ToJSString text) =>
                  Double -> Double -> text -> m TextTrackCue
newTextTrackCue startTime endTime text
  = liftIO (js_newTextTrackCue startTime endTime (toJSString text))
 
foreign import javascript unsafe "$1[\"track\"]" js_getTrack ::
        TextTrackCue -> IO (Nullable TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.track Mozilla TextTrackCue.track documentation> 
getTrack ::
         (MonadIO m, IsTextTrackCue self) => self -> m (Maybe TextTrack)
getTrack self
  = liftIO (nullableToMaybe <$> (js_getTrack (toTextTrackCue self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.track Mozilla TextTrackCue.track documentation> 
getTrackUnsafe ::
               (MonadIO m, IsTextTrackCue self, HasCallStack) =>
                 self -> m TextTrack
getTrackUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getTrack (toTextTrackCue self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.track Mozilla TextTrackCue.track documentation> 
getTrackUnchecked ::
                  (MonadIO m, IsTextTrackCue self) => self -> m TextTrack
getTrackUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getTrack (toTextTrackCue self)))
 
foreign import javascript unsafe "$1[\"id\"] = $2;" js_setId ::
        TextTrackCue -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.id Mozilla TextTrackCue.id documentation> 
setId ::
      (MonadIO m, IsTextTrackCue self, ToJSString val) =>
        self -> val -> m ()
setId self val
  = liftIO (js_setId (toTextTrackCue self) (toJSString val))
 
foreign import javascript unsafe "$1[\"id\"]" js_getId ::
        TextTrackCue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.id Mozilla TextTrackCue.id documentation> 
getId ::
      (MonadIO m, IsTextTrackCue self, FromJSString result) =>
        self -> m result
getId self
  = liftIO (fromJSString <$> (js_getId (toTextTrackCue self)))
 
foreign import javascript unsafe "$1[\"startTime\"] = $2;"
        js_setStartTime :: TextTrackCue -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.startTime Mozilla TextTrackCue.startTime documentation> 
setStartTime ::
             (MonadIO m, IsTextTrackCue self) => self -> Double -> m ()
setStartTime self val
  = liftIO (js_setStartTime (toTextTrackCue self) val)
 
foreign import javascript unsafe "$1[\"startTime\"]"
        js_getStartTime :: TextTrackCue -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.startTime Mozilla TextTrackCue.startTime documentation> 
getStartTime ::
             (MonadIO m, IsTextTrackCue self) => self -> m Double
getStartTime self = liftIO (js_getStartTime (toTextTrackCue self))
 
foreign import javascript unsafe "$1[\"endTime\"] = $2;"
        js_setEndTime :: TextTrackCue -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.endTime Mozilla TextTrackCue.endTime documentation> 
setEndTime ::
           (MonadIO m, IsTextTrackCue self) => self -> Double -> m ()
setEndTime self val
  = liftIO (js_setEndTime (toTextTrackCue self) val)
 
foreign import javascript unsafe "$1[\"endTime\"]" js_getEndTime ::
        TextTrackCue -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.endTime Mozilla TextTrackCue.endTime documentation> 
getEndTime :: (MonadIO m, IsTextTrackCue self) => self -> m Double
getEndTime self = liftIO (js_getEndTime (toTextTrackCue self))
 
foreign import javascript unsafe "$1[\"pauseOnExit\"] = $2;"
        js_setPauseOnExit :: TextTrackCue -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.pauseOnExit Mozilla TextTrackCue.pauseOnExit documentation> 
setPauseOnExit ::
               (MonadIO m, IsTextTrackCue self) => self -> Bool -> m ()
setPauseOnExit self val
  = liftIO (js_setPauseOnExit (toTextTrackCue self) val)
 
foreign import javascript unsafe "($1[\"pauseOnExit\"] ? 1 : 0)"
        js_getPauseOnExit :: TextTrackCue -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.pauseOnExit Mozilla TextTrackCue.pauseOnExit documentation> 
getPauseOnExit ::
               (MonadIO m, IsTextTrackCue self) => self -> m Bool
getPauseOnExit self
  = liftIO (js_getPauseOnExit (toTextTrackCue self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.onenter Mozilla TextTrackCue.onenter documentation> 
enter ::
      (IsTextTrackCue self, IsEventTarget self) => EventName self Event
enter = unsafeEventName (toJSString "enter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue.onexit Mozilla TextTrackCue.onexit documentation> 
exit ::
     (IsTextTrackCue self, IsEventTarget self) => EventName self Event
exit = unsafeEventName (toJSString "exit")