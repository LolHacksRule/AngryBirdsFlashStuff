package §6#§
{
   import §+!J§.§""A§;
   import §0#P§.*;
   import §1"b§.§7",§;
   import §6=§.§+!,§;
   import §^#W§.§>!W§;
   import com.furusystems.dconsole2.DConsole;
   import §default§.§4>§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   import flash.utils.describeType;
   import flash.utils.getQualifiedClassName;
   
   public class §7#C§ extends EventDispatcher
   {
      
      public static const §@!^§:int = 0;
      
      public static const §]"h§:int = 1;
      
      public static const §<"_§:int = 2;
       
      
      private var §=#+§:§#!z§;
      
      private var §=!@§:§#!z§;
      
      private var §[![§:DConsole;
      
      private var §4",§:§>!W§;
      
      private var §@"+§:§4>§;
      
      public function §7#C§(param1:DConsole, param2:§>!W§)
      {
         super();
         this.§[![§ = param1;
         this.§4",§ = param2;
         param1.§]"z§.addCallback(§""A§.§[T§,this.§"§);
         param1.§]"z§.addCallback(§""A§.§]!m§,this.§%!C§);
         param1.§]"z§.addCallback(§""A§.§=!i§,this.§6h§);
      }
      
      public function initialize() : void
      {
         this.§=#+§ = this.§0"s§({});
      }
      
      private function §6h§(param1:§7",§) : void
      {
         var md:§7",§ = param1;
         try
         {
            this.§4"i§(DisplayObjectContainer(this.§=#+§.§5#L§).getChildByName(String(md.data)));
         }
         catch(e:Error)
         {
            §[![§.§""W§("Null reference, couldn\'t select target.",§+!,§.ERROR);
         }
      }
      
      private function §%!C§(param1:§7",§) : void
      {
         var md:§7",§ = param1;
         try
         {
            this.§4"i§(this.§=#+§.§5#L§[md.data]);
         }
         catch(e:Error)
         {
            §[![§.§""W§("Null reference, couldn\'t select target.",§+!,§.ERROR);
         }
      }
      
      private function §"§(param1:§7",§) : void
      {
         this.§=#+§.§5#L§[param1.data.name] = param1.data.newValue;
         this.§[![§.§]"z§.§#!"§(§""A§.§="C§,this.§=#+§,this);
      }
      
      public function §0"s§(param1:*, param2:Boolean = false) : §#!z§
      {
         if(!param1)
         {
            throw new ArgumentError("Invalid scope");
         }
         var _loc3_:§#!z§ = new §#!z§();
         _loc3_.children = §'!-§.§[`§(param1);
         _loc3_.§-"2§ = §4"K§.§ 5§(param1);
         _loc3_.methods = §4"K§.§^!1§(param1);
         _loc3_.variables = §4"K§.§&"C§(param1);
         _loc3_.§5#L§ = param1;
         _loc3_.xml = describeType(param1);
         _loc3_.§,""§ = getQualifiedClassName(param1);
         _loc3_.§,!g§ = §4"K§.§^"1§(param1);
         _loc3_.§`R§ = §4"K§.§2!v§(param1);
         if(param2)
         {
            return _loc3_;
         }
         _loc3_.§3"j§ = §4"K§.§`N§(param1);
         this.§=#+§ = _loc3_;
         this.§[![§.§]"z§.§#!"§(§""A§.§3=§,this.§=#+§,this);
         return this.§=#+§;
      }
      
      public function §4"i§(param1:*, param2:Boolean = false, param3:Boolean = true) : void
      {
         var o:* = param1;
         var force:Boolean = param2;
         var printResults:Boolean = param3;
         if(o is Stage && DConsole.§@!&§)
         {
            this.§[![§.§""W§("Stage safe mode active, access prohibited",§+!,§.ERROR);
            return;
         }
         if(o is DConsole && DConsole.§;Z§)
         {
            this.§[![§.§""W§("Console safe mode active, access prohibited",§+!,§.ERROR);
            return;
         }
         this.§[![§.§]"z§.§#!"§(§""A§.§;"+§,this.§=#+§,this);
         try
         {
            this.§0"s§(o);
            this.§4",§.§,"_§ = this.§0%§.§3"j§;
         }
         catch(e:Error)
         {
            throw e;
         }
         if(printResults)
         {
            this.§]!5§();
            this.§?!p§();
         }
         this.§[![§.§]"z§.§#!"§(§""A§.§2"d§,this.§=#+§,this);
      }
      
      public function §@<§(param1:String) : *
      {
         var tmp:DisplayObject = null;
         var str:String = param1;
         try
         {
            if(this.§0%§.§5#L§[str])
            {
               return this.§0%§.§5#L§[str];
            }
            throw new Error();
         }
         catch(e:Error)
         {
            try
            {
               if(§0%§.§5#L§ is DisplayObjectContainer)
               {
                  tmp = §0%§.§5#L§.getChildByName(str);
                  if(tmp != null)
                  {
                     return tmp;
                  }
               }
            }
            catch(e:Error)
            {
            }
            throw new Error("No such scope");
         }
      }
      
      public function §["<§() : DisplayObject
      {
         return this.§[![§.root;
      }
      
      public function get §0%§() : §#!z§
      {
         return this.§=#+§;
      }
      
      public function up() : void
      {
         if(!this.§=#+§)
         {
            throw new Error("No current scope; cannot switch to parent");
         }
         if(this.§=#+§.§5#L§ is DisplayObject)
         {
            this.§4"i§(this.§=#+§.§5#L§.parent);
            return;
         }
         throw new Error("Current scope is not a DisplayObject; cannot switch to parent");
      }
      
      private function §;#G§(param1:Object, param2:String) : Object
      {
         throw new Error("Not found");
      }
      
      public function §1!%§(param1:String) : void
      {
         var found:Boolean = false;
         var split:Array = null;
         var i:int = 0;
         var str:String = param1;
         if(str.indexOf(".") > -1)
         {
            found = false;
            split = str.split(".");
            i = 0;
            while(i < split.length)
            {
               this.§4"i§(this.§@<§(split[i]),false,i == split.length - 1);
               i++;
            }
         }
         else
         {
            try
            {
               this.§4"i§(this.§@<§(str));
            }
            catch(e:Error)
            {
               throw e;
            }
         }
      }
      
      public function §`!3§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:§,"v§ = null;
         var _loc1_:Vector.<§,"v§> = this.§0%§.methods;
         this.§[![§.§""W§("\tmethods:");
         _loc2_ = 0;
         while(_loc2_ < _loc1_.length)
         {
            _loc3_ = _loc1_[_loc2_];
            this.§[![§.§""W§("\t\t" + _loc3_.name + " : " + _loc3_.returnType);
            _loc2_++;
         }
      }
      
      public function §3"0§() : void
      {
         var _loc2_:* = undefined;
         var _loc3_:int = 0;
         var _loc5_:§^!?§ = null;
         var _loc6_:§<`§ = null;
         var _loc1_:Vector.<§^!?§> = this.§0%§.variables;
         this.§[![§.§""W§("\tvariables: " + _loc1_.length);
         _loc3_ = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc5_ = _loc1_[_loc3_];
            this.§[![§.§""W§("\t\t" + _loc5_.name + ": " + _loc5_.type);
            try
            {
               _loc2_ = this.§0%§.§5#L§[_loc5_.name];
               this.§[![§.§""W§("\t\t\tvalue: " + (_loc2_ is ByteArray ? "[ByteArray]" : _loc2_.toString()));
            }
            catch(e:Error)
            {
            }
            _loc3_++;
         }
         var _loc4_:Vector.<§<`§> = this.§0%§.§-"2§;
         this.§[![§.§""W§("\taccessors: " + _loc4_.length);
         _loc3_ = 0;
         while(_loc3_ < _loc4_.length)
         {
            _loc6_ = _loc4_[_loc3_];
            this.§[![§.§""W§("\t\t" + _loc6_.name + ": " + _loc6_.type);
            try
            {
               _loc2_ = this.§0%§.§5#L§[_loc6_.name];
               this.§[![§.§""W§("\t\t\tvalue: " + (_loc2_ is ByteArray ? "[ByteArray]" : _loc2_.toString()));
            }
            catch(e:Error)
            {
            }
            _loc3_++;
         }
      }
      
      public function §,#F§() : void
      {
         var _loc3_:§`!$§ = null;
         var _loc1_:Vector.<§`!$§> = this.§0%§.children;
         if(_loc1_.length < 1)
         {
            return;
         }
         this.§[![§.§""W§("\tchildren: " + _loc1_.length);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            _loc3_ = _loc1_[_loc2_];
            this.§[![§.§""W§("\t\t" + _loc3_.name + " : " + _loc3_.type);
            _loc2_++;
         }
      }
      
      public function §?!p§() : void
      {
         this.§,#F§();
         this.§>#F§();
      }
      
      public function §>#F§() : void
      {
         var _loc3_:int = 0;
         var _loc5_:§^!?§ = null;
         var _loc1_:Vector.<§^!?§> = this.§0%§.variables;
         if(_loc1_.length < 1)
         {
            return;
         }
         var _loc4_:Array = [];
         _loc3_ = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc5_ = _loc1_[_loc3_];
            switch(_loc5_.type)
            {
               case "Number":
               case "Boolean":
               case "String":
               case "int":
               case "uint":
               case "Array":
                  break;
               default:
                  _loc4_.push("\t\t" + _loc5_.name + ": " + _loc5_.type);
                  break;
            }
            _loc3_++;
         }
         this.§[![§.§""W§("\tcomplex types: " + _loc4_.length);
         if(_loc4_.length > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.length)
            {
               this.§[![§.§""W§(_loc4_[_loc3_]);
               _loc3_++;
            }
         }
      }
      
      public function §]!5§() : void
      {
         if(this.§0%§.§5#L§ is ByteArray)
         {
            this.§[![§.§""W§("scope : [ByteArray]");
         }
         else
         {
            this.§[![§.§""W§("scope : " + this.§0%§.§5#L§.toString());
         }
      }
      
      public function §^#H§(param1:String, param2:*) : *
      {
         var propertyName:String = param1;
         var arg:* = param2;
         if(arg == "true")
         {
            arg = true;
         }
         else if(arg == "false")
         {
            arg = false;
         }
         try
         {
            this.§0%§.§5#L§[propertyName] = arg;
         }
         catch(e:Error)
         {
            §[![§.§""W§("Property \'" + propertyName + "\' could not be set",§+!,§.ERROR);
         }
         try
         {
            return this.§0%§.§5#L§[propertyName];
         }
         catch(e:Error)
         {
            return null;
         }
      }
      
      public function §37§(param1:String) : String
      {
         return this.§0%§.§5#L§[param1].toString();
      }
      
      public function §<![§(param1:String) : *
      {
         return this.§0%§.§5#L§[param1];
      }
      
      public function §<"r§() : void
      {
         this.§4"i§(this.§[![§.parent);
      }
      
      public function §8h§(... rest) : *
      {
         var _loc2_:Function = rest.shift();
         return this.§@"+§.§+A§(_loc2_,rest);
      }
      
      public function updateScope() : void
      {
         this.§4"i§(this.§0%§.§5#L§,true);
      }
      
      public function §==§(param1:String, param2:int = 0) : Vector.<String>
      {
         var _loc5_:int = 0;
         var _loc6_:§<`§ = null;
         var _loc7_:§^!?§ = null;
         var _loc8_:§,"v§ = null;
         var _loc9_:§`!$§ = null;
         var _loc3_:Vector.<String> = new Vector.<String>();
         var _loc4_:String = param1.toLowerCase();
         switch(param2)
         {
            case §]"h§:
               _loc5_ = this.§0%§.§-"2§.length;
               while(_loc5_--)
               {
                  if((_loc6_ = this.§0%§.§-"2§[_loc5_]).name.toLowerCase().indexOf(_loc4_,0) > -1)
                  {
                     _loc3_.push(_loc6_.name);
                  }
               }
               _loc5_ = this.§0%§.variables.length;
               while(_loc5_--)
               {
                  if((_loc7_ = this.§0%§.variables[_loc5_]).name.toLowerCase().indexOf(_loc4_,0) > -1)
                  {
                     _loc3_.push(_loc7_.name);
                  }
               }
               break;
            case §@!^§:
               _loc5_ = this.§0%§.methods.length;
               while(_loc5_--)
               {
                  if((_loc8_ = this.§0%§.methods[_loc5_]).name.toLowerCase().indexOf(_loc4_,0) > -1)
                  {
                     _loc3_.push(_loc8_.name);
                  }
               }
               break;
            case §<"_§:
               _loc5_ = this.§0%§.children.length;
               while(_loc5_--)
               {
                  if((_loc9_ = this.§0%§.children[_loc5_]).name.toLowerCase().indexOf(_loc4_,0) > -1)
                  {
                     _loc3_.push(_loc9_.name);
                  }
               }
         }
         return _loc3_;
      }
      
      public function §6F§(param1:Object) : §#!z§
      {
         return this.§0"s§(param1,true);
      }
      
      public function §4z§(param1:§4>§) : void
      {
         this.§@"+§ = param1;
      }
   }
}
