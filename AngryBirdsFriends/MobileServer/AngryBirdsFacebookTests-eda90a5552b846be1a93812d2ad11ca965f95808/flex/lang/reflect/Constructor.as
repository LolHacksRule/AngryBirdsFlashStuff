package flex.lang.reflect
{
   public class Constructor
   {
      
      private static var argMap:Array = [createInstance0,createInstance1,createInstance2,createInstance3,createInstance4,createInstance5];
       
      
      private var _constructorXML:XML;
      
      private var _klass:Klass;
      
      private var requiredArgNum:int = 0;
      
      private var triedToRegetConstructorParams:Boolean = false;
      
      private var _parameterTypes:Array;
      
      public function Constructor(constructorXML:XML, klass:Klass)
      {
         super();
         if(constructorXML)
         {
            this._constructorXML = constructorXML;
         }
         else
         {
            this._constructorXML = <constructor/>;
         }
         this._klass = klass;
      }
      
      private static function createInstance0(klass:Class) : *
      {
         return new klass();
      }
      
      private static function createInstance1(clazz:Class, arg1:*) : *
      {
         return new clazz(arg1);
      }
      
      private static function createInstance2(clazz:Class, arg1:*, arg2:*) : *
      {
         return new clazz(arg1,arg2);
      }
      
      private static function createInstance3(clazz:Class, arg1:*, arg2:*, arg3:*) : *
      {
         return new clazz(arg1,arg2,arg3);
      }
      
      private static function createInstance4(clazz:Class, arg1:*, arg2:*, arg3:*, arg4:*) : *
      {
         return new clazz(arg1,arg2,arg3,arg4);
      }
      
      private static function createInstance5(clazz:Class, arg1:*, arg2:*, arg3:*, arg4:*, arg5:*) : *
      {
         return new clazz(arg1,arg2,arg3,arg4,arg5);
      }
      
      public function get parameterTypes() : Array
      {
         if(!this._parameterTypes)
         {
            this._parameterTypes = this.buildParamTypeArray();
         }
         return this._parameterTypes;
      }
      
      private function buildParamTypeArray() : Array
      {
         var typeName:String = null;
         var type:Class = null;
         var missingParamType:Boolean = false;
         var j:int = 0;
         var typesList:XMLList = this._constructorXML.parameter;
         var ar:Array = new Array();
         var lastRequiredFound:Boolean = false;
         for(var i:int = 0; i < typesList.length(); i++)
         {
            typeName = typesList[i].@type;
            if(typeName != "*")
            {
               type = Klass.getClassFromName(typesList[i].@type);
            }
            else
            {
               type = null;
            }
            ar.push(type);
            if(!lastRequiredFound)
            {
               if(typesList[i].@optional == "false")
               {
                  ++this.requiredArgNum;
               }
               else
               {
                  lastRequiredFound = true;
               }
            }
         }
         if(!this.triedToRegetConstructorParams)
         {
            if(ar.length > 0)
            {
               missingParamType = false;
               for(j = 0; j < ar.length; j++)
               {
                  if(ar[j] == null)
                  {
                     missingParamType = true;
                     break;
                  }
               }
               if(missingParamType)
               {
                  this._parameterTypes = ar;
                  this.requiredArgNum = 0;
                  ar = this.instantiateAndRegetParamTypes(typesList.length());
               }
            }
         }
         return ar;
      }
      
      private function instantiateAndRegetParamTypes(numArgs:int) : Array
      {
         var params:Array = null;
         this.triedToRegetConstructorParams = true;
         try
         {
            params = new Array(numArgs);
            this.newInstanceApply(params);
         }
         catch(e:Error)
         {
         }
         this._klass.refreshClassXML(this._klass.asClass);
         this._constructorXML = this._klass.constructorXML;
         return this.buildParamTypeArray();
      }
      
      private function canInstantiateWithParams(args:Array) : Boolean
      {
         var maxArgs:int = this.parameterTypes.length;
         if(args.length < this.requiredArgNum || args.length > maxArgs)
         {
            return false;
         }
         return true;
      }
      
      public function newInstanceApply(params:Array) : Object
      {
         if(!params)
         {
            params = [];
         }
         var localParams:Array = params.slice();
         var mapIndex:uint = Math.min(this.parameterTypes.length,localParams.length);
         if(!this.canInstantiateWithParams(localParams) || this.requiredArgNum > mapIndex)
         {
            throw new ArgumentError("Invalid number or type of arguments to contructor");
         }
         if(localParams.length > argMap.length)
         {
            throw new ArgumentError("Sorry, we can\'t support constructors with more than " + argMap.length + " args out of the box... yes, its dumb, take a look at Constructor.as to modify on your own");
         }
         var generator:Function = argMap[mapIndex];
         localParams.unshift(this._klass.classDef);
         return generator.apply(null,localParams);
      }
      
      public function newInstance(... args) : Object
      {
         return this.newInstanceApply(args);
      }
   }
}
