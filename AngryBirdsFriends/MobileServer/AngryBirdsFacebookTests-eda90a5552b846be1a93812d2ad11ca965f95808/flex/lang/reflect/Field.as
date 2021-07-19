package flex.lang.reflect
{
   import flex.lang.reflect.metadata.MetaDataAnnotation;
   import org.flexunit.constants.AnnotationConstants;
   
   public class Field
   {
       
      
      private var _fieldXML:XML;
      
      private var _definedBy:Class;
      
      private var _elementType:Class;
      
      private var _metaData:Array;
      
      private var _name:String;
      
      private var _isStatic:Boolean;
      
      private var _isProperty:Boolean;
      
      private var _type:Class;
      
      public function Field(fieldXML:XML, isStatic:Boolean, definedBy:Class, isProperty:Boolean)
      {
         super();
         if(!fieldXML)
         {
            throw new ArgumentError("Valid XML must be provided to Field Constructor");
         }
         if(!definedBy)
         {
            throw new ArgumentError("Invalid owning class passed to Field Constructor");
         }
         this._fieldXML = fieldXML;
         this._name = fieldXML.@name;
         this._isStatic = isStatic;
         this._definedBy = definedBy;
         this._isProperty = isProperty;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get isStatic() : Boolean
      {
         return this._isStatic;
      }
      
      public function get isProperty() : Boolean
      {
         return this._isProperty;
      }
      
      public function get definedBy() : Class
      {
         return this._definedBy;
      }
      
      public function getObj(obj:Object = null) : Object
      {
         if(this.isStatic && obj == null)
         {
            return this._definedBy[this.name];
         }
         if(!this.isStatic && obj != null)
         {
            return obj[this.name];
         }
         throw new ArgumentError("Attempting to access inaccessible field on object or class.");
      }
      
      public function get elementType() : Class
      {
         var meta:String = null;
         if(this._elementType)
         {
            return this._elementType;
         }
         var metaDataAnnotation:MetaDataAnnotation = this.getMetaData(AnnotationConstants.ARRAY_ELEMENT_TYPE);
         if(this.type == Array && metaDataAnnotation && metaDataAnnotation.defaultArgument)
         {
            meta = metaDataAnnotation.defaultArgument.key;
            try
            {
               this._elementType = Klass.getClassFromName(meta);
            }
            catch(error:Error)
            {
               _elementType = null;
            }
         }
         return this._elementType;
      }
      
      public function get metadata() : Array
      {
         var fieldMetaData:XMLList = null;
         var i:int = 0;
         if(!this._metaData)
         {
            this._metaData = new Array();
            if(this._fieldXML && this._fieldXML.metadata)
            {
               fieldMetaData = this._fieldXML.metadata;
               for(i = 0; i < fieldMetaData.length(); i++)
               {
                  this._metaData.push(new MetaDataAnnotation(fieldMetaData[i]));
               }
            }
         }
         return this._metaData;
      }
      
      public function hasMetaData(name:String) : Boolean
      {
         return this.getMetaData(name) != null;
      }
      
      public function getMetaData(name:String) : MetaDataAnnotation
      {
         var i:int = 0;
         var metadataAr:Array = this.metadata;
         if(metadataAr.length)
         {
            for(i = 0; i < metadataAr.length; i++)
            {
               if((metadataAr[i] as MetaDataAnnotation).name == name)
               {
                  return metadataAr[i];
               }
            }
         }
         return null;
      }
      
      public function get type() : Class
      {
         var strType:String = null;
         if(!this._type)
         {
            strType = this._fieldXML.@type;
            if(strType.length <= 0)
            {
               throw new TypeError("Unknown Type");
            }
            this._type = Klass.getClassFromName(strType);
         }
         return this._type;
      }
      
      public function equals(item:Field) : Boolean
      {
         var localLen:int = 0;
         var remoteLen:int = 0;
         var i:int = 0;
         var localMeta:MetaDataAnnotation = null;
         var remoteMeta:MetaDataAnnotation = null;
         if(!item)
         {
            return false;
         }
         var equiv:Boolean = this.name == item.name && this.type == item.type && this.isStatic == item.isStatic && this.isProperty == item.isProperty && this.definedBy == item.definedBy;
         var localMetaData:Array = this.metadata;
         var remoteMetaData:Array = item.metadata;
         if(equiv)
         {
            localLen = !!localMetaData ? int(localMetaData.length) : 0;
            remoteLen = !!remoteMetaData ? int(remoteMetaData.length) : 0;
            if(localLen != remoteLen)
            {
               return false;
            }
            if(localLen > 0)
            {
               for(i = 0; i < localLen; i++)
               {
                  localMeta = localMetaData[i];
                  remoteMeta = remoteMetaData[i];
                  equiv = localMeta.equals(remoteMeta);
                  if(!equiv)
                  {
                     break;
                  }
               }
            }
         }
         return equiv;
      }
   }
}
