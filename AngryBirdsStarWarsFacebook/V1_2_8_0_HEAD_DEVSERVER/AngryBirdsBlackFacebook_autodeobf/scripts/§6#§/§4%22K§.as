package §6#§
{
   import §0#P§.*;
   import §^#W§.§@#§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.describeType;
   import flash.utils.getQualifiedClassName;
   
   public class §4"K§
   {
      
      private static var desc:XML;
      
      private static var §'"a§:String;
       
      
      public function §4"K§()
      {
         super();
      }
      
      public static function §`N§(param1:*) : §@#§
      {
         var _loc3_:XML = null;
         var _loc5_:int = 0;
         desc = §[#E§(param1);
         var _loc2_:§@#§ = new §@#§();
         var _loc4_:XMLList = desc..method;
         for each(_loc3_ in _loc4_)
         {
            _loc2_.§<#T§(_loc3_.@name);
         }
         _loc4_ = desc..variable;
         for each(_loc3_ in _loc4_)
         {
            _loc2_.§<#T§(_loc3_.@name);
         }
         _loc4_ = desc..method;
         for each(_loc3_ in _loc4_)
         {
            _loc2_.§<#T§(_loc3_.@name);
         }
         _loc4_ = desc..accessor;
         for each(_loc3_ in _loc4_)
         {
            _loc2_.§<#T§(_loc3_.@name);
         }
         if(param1 is DisplayObjectContainer)
         {
            (_loc5_ = param1.numChildren) > 0;
            while(_loc5_--)
            {
               _loc2_.§<#T§(param1.getChildAt(_loc5_).name);
            }
         }
         return _loc2_;
      }
      
      public static function §^"1§(param1:*) : Vector.<String>
      {
         var _loc3_:XML = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         desc = §[#E§(param1);
         for each(_loc3_ in desc..extendsClass)
         {
            _loc2_.push(_loc3_.@type);
         }
         return _loc2_;
      }
      
      public static function §2!v§(param1:*) : Vector.<String>
      {
         var _loc3_:XML = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         desc = §[#E§(param1);
         for each(_loc3_ in desc..implementsInterface)
         {
            _loc2_.push(_loc3_.@type);
         }
         return _loc2_;
      }
      
      private static function §[#E§(param1:*) : XML
      {
         var _loc2_:String = getQualifiedClassName(param1);
         if(§'"a§ != _loc2_)
         {
            desc = describeType(param1);
            §'"a§ = _loc2_;
         }
         return desc;
      }
      
      public static function § 5§(param1:*) : Vector.<§<`§>
      {
         var _loc3_:XML = null;
         desc = §[#E§(param1);
         var _loc2_:Vector.<§<`§> = new Vector.<§<`§>();
         var _loc4_:XMLList = desc..accessor;
         for each(_loc3_ in _loc4_)
         {
            _loc2_.push(new §<`§(_loc3_));
         }
         return _loc2_;
      }
      
      public static function §^!1§(param1:*) : Vector.<§,"v§>
      {
         var _loc3_:XML = null;
         desc = §[#E§(param1);
         var _loc2_:Vector.<§,"v§> = new Vector.<§,"v§>();
         var _loc4_:XMLList = desc..method;
         for each(_loc3_ in _loc4_)
         {
            _loc2_.push(new §,"v§(_loc3_));
         }
         return _loc2_;
      }
      
      public static function §&"C§(param1:*) : Vector.<§^!?§>
      {
         var _loc3_:XML = null;
         desc = §[#E§(param1);
         var _loc2_:Vector.<§^!?§> = new Vector.<§^!?§>();
         var _loc4_:XMLList = desc..variable;
         for each(_loc3_ in _loc4_)
         {
            _loc2_.push(new §^!?§(_loc3_));
         }
         return _loc2_;
      }
      
      public static function §;"h§(param1:Object, param2:String) : String
      {
         var tip:String = null;
         var desc:XMLList = null;
         var first:Boolean = false;
         var attrib:XML = null;
         var scope:Object = param1;
         var methodName:String = param2;
         tip = methodName + "( ";
         desc = §[#E§(scope)..method.(attribute("name").toLowerCase() == methodName.toLowerCase());
         if(desc.length() == 0)
         {
            throw new Error("No description for method " + methodName);
         }
         first = true;
         for each(attrib in desc..parameter)
         {
            if(!first)
            {
               tip += ", ";
            }
            tip += attrib.@type.toString().toLowerCase();
            if(attrib.@optional == "true")
            {
               tip += "[optional]";
            }
            first = false;
         }
         tip += " ):" + desc.@returnType;
         return tip;
      }
      
      public static function §>!l§(param1:Object, param2:String) : String
      {
         var tip:String = null;
         var desc:XMLList = null;
         var scope:Object = param1;
         var accessorName:String = param2;
         tip = accessorName;
         desc = §[#E§(scope)..accessor.(attribute("name").toLowerCase() == accessorName.toLowerCase());
         if(desc.length() == 0)
         {
            desc = §[#E§(scope)..variable.(attribute("name").toLowerCase() == accessorName.toLowerCase());
            if(desc.length() == 0)
            {
               throw new Error("No description");
            }
         }
         tip += ":" + desc.@type;
         if(desc.@access == "readonly")
         {
            tip += " (read only)";
         }
         return tip;
      }
      
      public static function §8w§(param1:Object) : Array
      {
         var _loc4_:XML = null;
         var _loc2_:XML = §[#E§(param1);
         var _loc3_:Array = [];
         for each(_loc4_ in _loc2_..parameter)
         {
            _loc3_.push(_loc4_);
         }
         return _loc3_;
      }
   }
}
