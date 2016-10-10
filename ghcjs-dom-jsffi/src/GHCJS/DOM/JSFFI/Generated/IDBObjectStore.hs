{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.IDBObjectStore
       (js_put, put, put_, putUnchecked, js_add, add, add_, addUnchecked,
        js_deleteRange, deleteRange, deleteRange_, deleteRangeUnchecked,
        js_delete, delete, delete_, deleteUnchecked, js_getRange, getRange,
        getRange_, getRangeUnchecked, js_get, get, get_, getUnchecked,
        js_clear, clear, clear_, clearUnchecked, js_openCursorRange,
        openCursorRange, openCursorRange_, openCursorRangeUnchecked,
        js_openCursor, openCursor, openCursor_, openCursorUnchecked,
        js_createIndex', createIndex', createIndex'_,
        createIndex'Unchecked, js_createIndex, createIndex, createIndex_,
        createIndexUnchecked, js_index, index, index_, indexUnchecked,
        js_deleteIndex, deleteIndex, js_countRange, countRange,
        countRange_, countRangeUnchecked, js_count, count, count_,
        countUnchecked, js_getName, getName, getNameUnchecked,
        js_getKeyPath, getKeyPath, getKeyPathUnchecked, js_getIndexNames,
        getIndexNames, getIndexNamesUnchecked, js_getTransaction,
        getTransaction, getTransactionUnchecked, js_getAutoIncrement,
        getAutoIncrement, IDBObjectStore, castToIDBObjectStore,
        gTypeIDBObjectStore)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
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
 
foreign import javascript unsafe "$1[\"put\"]($2, $3)" js_put ::
        IDBObjectStore -> JSVal -> JSVal -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.put Mozilla IDBObjectStore.put documentation> 
put ::
    (MonadIO m) =>
      IDBObjectStore -> JSVal -> JSVal -> m (Maybe IDBRequest)
put self value key
  = liftIO (nullableToMaybe <$> (js_put (self) value key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.put Mozilla IDBObjectStore.put documentation> 
put_ :: (MonadIO m) => IDBObjectStore -> JSVal -> JSVal -> m ()
put_ self value key = liftIO (void (js_put (self) value key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.put Mozilla IDBObjectStore.put documentation> 
putUnchecked ::
             (MonadIO m) => IDBObjectStore -> JSVal -> JSVal -> m IDBRequest
putUnchecked self value key
  = liftIO (fromJust . nullableToMaybe <$> (js_put (self) value key))
 
foreign import javascript unsafe "$1[\"add\"]($2, $3)" js_add ::
        IDBObjectStore -> JSVal -> JSVal -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.add Mozilla IDBObjectStore.add documentation> 
add ::
    (MonadIO m) =>
      IDBObjectStore -> JSVal -> JSVal -> m (Maybe IDBRequest)
add self value key
  = liftIO (nullableToMaybe <$> (js_add (self) value key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.add Mozilla IDBObjectStore.add documentation> 
add_ :: (MonadIO m) => IDBObjectStore -> JSVal -> JSVal -> m ()
add_ self value key = liftIO (void (js_add (self) value key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.add Mozilla IDBObjectStore.add documentation> 
addUnchecked ::
             (MonadIO m) => IDBObjectStore -> JSVal -> JSVal -> m IDBRequest
addUnchecked self value key
  = liftIO (fromJust . nullableToMaybe <$> (js_add (self) value key))
 
foreign import javascript unsafe "$1[\"delete\"]($2)"
        js_deleteRange ::
        IDBObjectStore -> Nullable IDBKeyRange -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
deleteRange ::
            (MonadIO m) =>
              IDBObjectStore -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
deleteRange self keyRange
  = liftIO
      (nullableToMaybe <$>
         (js_deleteRange (self) (maybeToNullable keyRange)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
deleteRange_ ::
             (MonadIO m) => IDBObjectStore -> Maybe IDBKeyRange -> m ()
deleteRange_ self keyRange
  = liftIO (void (js_deleteRange (self) (maybeToNullable keyRange)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
deleteRangeUnchecked ::
                     (MonadIO m) => IDBObjectStore -> Maybe IDBKeyRange -> m IDBRequest
deleteRangeUnchecked self keyRange
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_deleteRange (self) (maybeToNullable keyRange)))
 
foreign import javascript unsafe "$1[\"delete\"]($2)" js_delete ::
        IDBObjectStore -> JSVal -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
delete ::
       (MonadIO m) => IDBObjectStore -> JSVal -> m (Maybe IDBRequest)
delete self key
  = liftIO (nullableToMaybe <$> (js_delete (self) key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
delete_ :: (MonadIO m) => IDBObjectStore -> JSVal -> m ()
delete_ self key = liftIO (void (js_delete (self) key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
deleteUnchecked ::
                (MonadIO m) => IDBObjectStore -> JSVal -> m IDBRequest
deleteUnchecked self key
  = liftIO (fromJust . nullableToMaybe <$> (js_delete (self) key))
 
foreign import javascript unsafe "$1[\"get\"]($2)" js_getRange ::
        IDBObjectStore -> Nullable IDBKeyRange -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
getRange ::
         (MonadIO m) =>
           IDBObjectStore -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
getRange self key
  = liftIO
      (nullableToMaybe <$> (js_getRange (self) (maybeToNullable key)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
getRange_ ::
          (MonadIO m) => IDBObjectStore -> Maybe IDBKeyRange -> m ()
getRange_ self key
  = liftIO (void (js_getRange (self) (maybeToNullable key)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
getRangeUnchecked ::
                  (MonadIO m) => IDBObjectStore -> Maybe IDBKeyRange -> m IDBRequest
getRangeUnchecked self key
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getRange (self) (maybeToNullable key)))
 
foreign import javascript unsafe "$1[\"get\"]($2)" js_get ::
        IDBObjectStore -> JSVal -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
get ::
    (MonadIO m) => IDBObjectStore -> JSVal -> m (Maybe IDBRequest)
get self key = liftIO (nullableToMaybe <$> (js_get (self) key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
get_ :: (MonadIO m) => IDBObjectStore -> JSVal -> m ()
get_ self key = liftIO (void (js_get (self) key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
getUnchecked ::
             (MonadIO m) => IDBObjectStore -> JSVal -> m IDBRequest
getUnchecked self key
  = liftIO (fromJust . nullableToMaybe <$> (js_get (self) key))
 
foreign import javascript unsafe "$1[\"clear\"]()" js_clear ::
        IDBObjectStore -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.clear Mozilla IDBObjectStore.clear documentation> 
clear :: (MonadIO m) => IDBObjectStore -> m (Maybe IDBRequest)
clear self = liftIO (nullableToMaybe <$> (js_clear (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.clear Mozilla IDBObjectStore.clear documentation> 
clear_ :: (MonadIO m) => IDBObjectStore -> m ()
clear_ self = liftIO (void (js_clear (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.clear Mozilla IDBObjectStore.clear documentation> 
clearUnchecked :: (MonadIO m) => IDBObjectStore -> m IDBRequest
clearUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_clear (self)))
 
foreign import javascript unsafe "$1[\"openCursor\"]($2, $3)"
        js_openCursorRange ::
        IDBObjectStore ->
          Nullable IDBKeyRange -> JSString -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursorRange ::
                (MonadIO m, ToJSString direction) =>
                  IDBObjectStore ->
                    Maybe IDBKeyRange -> direction -> m (Maybe IDBRequest)
openCursorRange self range direction
  = liftIO
      (nullableToMaybe <$>
         (js_openCursorRange (self) (maybeToNullable range)
            (toJSString direction)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursorRange_ ::
                 (MonadIO m, ToJSString direction) =>
                   IDBObjectStore -> Maybe IDBKeyRange -> direction -> m ()
openCursorRange_ self range direction
  = liftIO
      (void
         (js_openCursorRange (self) (maybeToNullable range)
            (toJSString direction)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursorRangeUnchecked ::
                         (MonadIO m, ToJSString direction) =>
                           IDBObjectStore -> Maybe IDBKeyRange -> direction -> m IDBRequest
openCursorRangeUnchecked self range direction
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_openCursorRange (self) (maybeToNullable range)
            (toJSString direction)))
 
foreign import javascript unsafe "$1[\"openCursor\"]($2, $3)"
        js_openCursor ::
        IDBObjectStore -> JSVal -> JSString -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursor ::
           (MonadIO m, ToJSString direction) =>
             IDBObjectStore -> JSVal -> direction -> m (Maybe IDBRequest)
openCursor self key direction
  = liftIO
      (nullableToMaybe <$>
         (js_openCursor (self) key (toJSString direction)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursor_ ::
            (MonadIO m, ToJSString direction) =>
              IDBObjectStore -> JSVal -> direction -> m ()
openCursor_ self key direction
  = liftIO (void (js_openCursor (self) key (toJSString direction)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursorUnchecked ::
                    (MonadIO m, ToJSString direction) =>
                      IDBObjectStore -> JSVal -> direction -> m IDBRequest
openCursorUnchecked self key direction
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_openCursor (self) key (toJSString direction)))
 
foreign import javascript unsafe "$1[\"createIndex\"]($2, $3, $4)"
        js_createIndex' ::
        IDBObjectStore ->
          JSString -> JSVal -> Nullable Dictionary -> IO (Nullable IDBIndex)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex Mozilla IDBObjectStore.createIndex documentation> 
createIndex' ::
             (MonadIO m, ToJSString name, ToJSString keyPath,
              IsDictionary options) =>
               IDBObjectStore ->
                 name -> [keyPath] -> Maybe options -> m (Maybe IDBIndex)
createIndex' self name keyPath options
  = liftIO
      (nullableToMaybe <$>
         (toJSVal keyPath >>=
            \ keyPath' -> js_createIndex' (self) (toJSString name) keyPath'
            (maybeToNullable (fmap toDictionary options))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex Mozilla IDBObjectStore.createIndex documentation> 
createIndex'_ ::
              (MonadIO m, ToJSString name, ToJSString keyPath,
               IsDictionary options) =>
                IDBObjectStore -> name -> [keyPath] -> Maybe options -> m ()
createIndex'_ self name keyPath options
  = liftIO
      (void
         (toJSVal keyPath >>=
            \ keyPath' -> js_createIndex' (self) (toJSString name) keyPath'
            (maybeToNullable (fmap toDictionary options))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex Mozilla IDBObjectStore.createIndex documentation> 
createIndex'Unchecked ::
                      (MonadIO m, ToJSString name, ToJSString keyPath,
                       IsDictionary options) =>
                        IDBObjectStore -> name -> [keyPath] -> Maybe options -> m IDBIndex
createIndex'Unchecked self name keyPath options
  = liftIO
      (fromJust . nullableToMaybe <$>
         (toJSVal keyPath >>=
            \ keyPath' -> js_createIndex' (self) (toJSString name) keyPath'
            (maybeToNullable (fmap toDictionary options))))
 
foreign import javascript unsafe "$1[\"createIndex\"]($2, $3, $4)"
        js_createIndex ::
        IDBObjectStore ->
          JSString ->
            JSString -> Nullable Dictionary -> IO (Nullable IDBIndex)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex Mozilla IDBObjectStore.createIndex documentation> 
createIndex ::
            (MonadIO m, ToJSString name, ToJSString keyPath,
             IsDictionary options) =>
              IDBObjectStore ->
                name -> keyPath -> Maybe options -> m (Maybe IDBIndex)
createIndex self name keyPath options
  = liftIO
      (nullableToMaybe <$>
         (js_createIndex (self) (toJSString name) (toJSString keyPath)
            (maybeToNullable (fmap toDictionary options))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex Mozilla IDBObjectStore.createIndex documentation> 
createIndex_ ::
             (MonadIO m, ToJSString name, ToJSString keyPath,
              IsDictionary options) =>
               IDBObjectStore -> name -> keyPath -> Maybe options -> m ()
createIndex_ self name keyPath options
  = liftIO
      (void
         (js_createIndex (self) (toJSString name) (toJSString keyPath)
            (maybeToNullable (fmap toDictionary options))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex Mozilla IDBObjectStore.createIndex documentation> 
createIndexUnchecked ::
                     (MonadIO m, ToJSString name, ToJSString keyPath,
                      IsDictionary options) =>
                       IDBObjectStore -> name -> keyPath -> Maybe options -> m IDBIndex
createIndexUnchecked self name keyPath options
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createIndex (self) (toJSString name) (toJSString keyPath)
            (maybeToNullable (fmap toDictionary options))))
 
foreign import javascript unsafe "$1[\"index\"]($2)" js_index ::
        IDBObjectStore -> JSString -> IO (Nullable IDBIndex)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.index Mozilla IDBObjectStore.index documentation> 
index ::
      (MonadIO m, ToJSString name) =>
        IDBObjectStore -> name -> m (Maybe IDBIndex)
index self name
  = liftIO (nullableToMaybe <$> (js_index (self) (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.index Mozilla IDBObjectStore.index documentation> 
index_ ::
       (MonadIO m, ToJSString name) => IDBObjectStore -> name -> m ()
index_ self name
  = liftIO (void (js_index (self) (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.index Mozilla IDBObjectStore.index documentation> 
indexUnchecked ::
               (MonadIO m, ToJSString name) =>
                 IDBObjectStore -> name -> m IDBIndex
indexUnchecked self name
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_index (self) (toJSString name)))
 
foreign import javascript unsafe "$1[\"deleteIndex\"]($2)"
        js_deleteIndex :: IDBObjectStore -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.deleteIndex Mozilla IDBObjectStore.deleteIndex documentation> 
deleteIndex ::
            (MonadIO m, ToJSString name) => IDBObjectStore -> name -> m ()
deleteIndex self name
  = liftIO (js_deleteIndex (self) (toJSString name))
 
foreign import javascript unsafe "$1[\"count\"]($2)" js_countRange
        ::
        IDBObjectStore -> Nullable IDBKeyRange -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
countRange ::
           (MonadIO m) =>
             IDBObjectStore -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
countRange self range
  = liftIO
      (nullableToMaybe <$>
         (js_countRange (self) (maybeToNullable range)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
countRange_ ::
            (MonadIO m) => IDBObjectStore -> Maybe IDBKeyRange -> m ()
countRange_ self range
  = liftIO (void (js_countRange (self) (maybeToNullable range)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
countRangeUnchecked ::
                    (MonadIO m) => IDBObjectStore -> Maybe IDBKeyRange -> m IDBRequest
countRangeUnchecked self range
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_countRange (self) (maybeToNullable range)))
 
foreign import javascript unsafe "$1[\"count\"]($2)" js_count ::
        IDBObjectStore -> JSVal -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
count ::
      (MonadIO m) => IDBObjectStore -> JSVal -> m (Maybe IDBRequest)
count self key = liftIO (nullableToMaybe <$> (js_count (self) key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
count_ :: (MonadIO m) => IDBObjectStore -> JSVal -> m ()
count_ self key = liftIO (void (js_count (self) key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
countUnchecked ::
               (MonadIO m) => IDBObjectStore -> JSVal -> m IDBRequest
countUnchecked self key
  = liftIO (fromJust . nullableToMaybe <$> (js_count (self) key))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        IDBObjectStore -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.name Mozilla IDBObjectStore.name documentation> 
getName ::
        (MonadIO m, FromJSString result) =>
          IDBObjectStore -> m (Maybe result)
getName self = liftIO (fromMaybeJSString <$> (js_getName (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.name Mozilla IDBObjectStore.name documentation> 
getNameUnchecked ::
                 (MonadIO m, FromJSString result) => IDBObjectStore -> m result
getNameUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "$1[\"keyPath\"]" js_getKeyPath ::
        IDBObjectStore -> IO (Nullable IDBAny)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.keyPath Mozilla IDBObjectStore.keyPath documentation> 
getKeyPath :: (MonadIO m) => IDBObjectStore -> m (Maybe IDBAny)
getKeyPath self
  = liftIO (nullableToMaybe <$> (js_getKeyPath (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.keyPath Mozilla IDBObjectStore.keyPath documentation> 
getKeyPathUnchecked :: (MonadIO m) => IDBObjectStore -> m IDBAny
getKeyPathUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getKeyPath (self)))
 
foreign import javascript unsafe "$1[\"indexNames\"]"
        js_getIndexNames :: IDBObjectStore -> IO (Nullable DOMStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.indexNames Mozilla IDBObjectStore.indexNames documentation> 
getIndexNames ::
              (MonadIO m) => IDBObjectStore -> m (Maybe DOMStringList)
getIndexNames self
  = liftIO (nullableToMaybe <$> (js_getIndexNames (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.indexNames Mozilla IDBObjectStore.indexNames documentation> 
getIndexNamesUnchecked ::
                       (MonadIO m) => IDBObjectStore -> m DOMStringList
getIndexNamesUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getIndexNames (self)))
 
foreign import javascript unsafe "$1[\"transaction\"]"
        js_getTransaction :: IDBObjectStore -> IO (Nullable IDBTransaction)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.transaction Mozilla IDBObjectStore.transaction documentation> 
getTransaction ::
               (MonadIO m) => IDBObjectStore -> m (Maybe IDBTransaction)
getTransaction self
  = liftIO (nullableToMaybe <$> (js_getTransaction (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.transaction Mozilla IDBObjectStore.transaction documentation> 
getTransactionUnchecked ::
                        (MonadIO m) => IDBObjectStore -> m IDBTransaction
getTransactionUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getTransaction (self)))
 
foreign import javascript unsafe "($1[\"autoIncrement\"] ? 1 : 0)"
        js_getAutoIncrement :: IDBObjectStore -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.autoIncrement Mozilla IDBObjectStore.autoIncrement documentation> 
getAutoIncrement :: (MonadIO m) => IDBObjectStore -> m Bool
getAutoIncrement self = liftIO (js_getAutoIncrement (self))