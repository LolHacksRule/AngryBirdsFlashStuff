package §]"U§
{
   import §1"b§.§>l§;
   import §6#§.§7#C§;
   import §6=§.§+!,§;
   import §6=§.§@"c§;
   import §>!c§.§?!;§;
   import §>"%§.§"!5§;
   import §]!"§.§+"d§;
   import com.furusystems.dconsole2.§!!%§;
   import com.furusystems.dconsole2.DConsole;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   import flash.utils.describeType;
   
   public class § !X§
   {
       
      
      private var §]t§:Dictionary;
      
      private var §&#-§:Vector.<§+4§>;
      
      private var §;'§:Vector.<§break§>;
      
      private var §8!A§:Vector.<§"#%§>;
      
      private var §>#?§:Vector.<§'#;§>;
      
      private var §-"x§:§7#C§;
      
      private var §-"_§:§+"d§;
      
      private var §#L§:DConsole;
      
      private var §5![§:Sprite;
      
      private var §6u§:Sprite;
      
      private var §^"&§:Sprite;
      
      private var §-!z§:§"!5§;
      
      public function § !X§(param1:§7#C§, param2:§+"d§, param3:DConsole, param4:Sprite, param5:Sprite, param6:Sprite, param7:§"!5§)
      {
         this.§&#-§ = new Vector.<§+4§>();
         this.§;'§ = new Vector.<§break§>();
         this.§8!A§ = new Vector.<§"#%§>();
         this.§>#?§ = new Vector.<§'#;§>();
         super();
         this.§-!z§ = param7;
         this.§5![§ = param4;
         this.§6u§ = param5;
         this.§^"&§ = param6;
         this.§-"x§ = param1;
         this.§-"_§ = param2;
         this.§#L§ = param3;
         this.§]t§ = new Dictionary();
      }
      
      public function §[t§(param1:Class) : void
      {
         if(this.§]t§[param1] != null)
         {
            this.§]t§[param1].shutdown(this);
            if(this.§]t§[param1] is §'#;§)
            {
               this.§#L§.view.inspector.§]!E§(this.§]t§[param1]);
               this.§>#?§.splice(this.§>#?§.indexOf(this.§]t§[param1]),1);
            }
            else if(this.§]t§[param1] is §"#%§)
            {
               this.§8!A§.splice(this.§8!A§.indexOf(this.§]t§[param1]),1);
            }
            else if(this.§]t§[param1] is §break§)
            {
               this.§;'§.splice(this.§;'§.indexOf(this.§]t§[param1]),1);
            }
            else if(this.§]t§[param1] is §+4§)
            {
               this.§&#-§.splice(this.§&#-§.indexOf(this.§]t§[param1]),1);
            }
            this.§]t§[param1] = null;
            delete this.§]t§[param1];
         }
      }
      
      public function §'"W§(param1:Class) : void
      {
         var _loc3_:§3"l§ = null;
         var _loc4_:Class = null;
         var _loc5_:§^"p§ = null;
         var _loc6_:int = 0;
         var _loc2_:* = new param1();
         if(_loc2_ is §3"l§)
         {
            _loc3_ = _loc2_ as §3"l§;
            if(this.§]t§[param1] == null)
            {
               if(_loc3_.§&!R§ != null)
               {
                  if(_loc3_.§&!R§.length > 0)
                  {
                     for each(_loc4_ in _loc3_.§&!R§)
                     {
                        this.§'"W§(_loc4_);
                     }
                  }
               }
               _loc3_.initialize(this);
               this.§]t§[param1] = _loc3_;
               if(_loc3_ is §'#;§)
               {
                  this.§>#?§.push(_loc3_);
                  this.§#L§.view.inspector.§4!w§(§'#;§(_loc3_));
               }
               else if(_loc3_ is §"#%§)
               {
                  this.§8!A§.push(_loc3_);
               }
               else if(_loc3_ is §break§)
               {
                  this.§;'§.push(_loc3_);
               }
               else if(_loc3_ is §+4§)
               {
                  this.§&#-§.push(_loc3_);
               }
            }
         }
         else if(_loc2_ is §^"p§)
         {
            _loc5_ = _loc2_ as §^"p§;
            _loc6_ = 0;
            while(_loc6_ < _loc5_.plugins.length)
            {
               this.§'"W§(_loc5_.plugins[_loc6_]);
               _loc6_++;
            }
         }
         else
         {
            this.§[![§.§""W§("Couldn\'t register plug-in: " + String(describeType(param1).@name).split("::").pop(),§+!,§.ERROR);
         }
      }
      
      public function get §'0§() : int
      {
         var _loc2_:§3"l§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§]t§)
         {
            _loc1_++;
         }
         return _loc1_;
      }
      
      public function §#Y§() : void
      {
         var _loc2_:§3"l§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§]t§)
         {
            _loc1_++;
            this.§[![§.§""W§(String(describeType(_loc2_).@name).split("::").pop(),§+!,§.§>y§);
            this.§[![§.§""W§("\t(" + _loc2_.§6!7§ + ")");
         }
         this.§[![§.§""W§(_loc1_ + " plugins registered",§+!,§.§>y§);
      }
      
      public function §4!'§(param1:String) : *
      {
         var _loc3_:§"#%§ = null;
         var _loc4_:* = undefined;
         var _loc2_:int = 0;
         while(_loc2_ < this.§8!A§.length)
         {
            _loc3_ = this.§8!A§[_loc2_];
            if((_loc4_ = _loc3_.parse(param1)) != null)
            {
               return _loc4_;
            }
            _loc2_++;
         }
         return param1;
      }
      
      public function §5""§(param1:§@"c§) : Boolean
      {
         var _loc2_:§break§ = null;
         for each(_loc2_ in this.§;'§)
         {
            if(!_loc2_.filter(param1))
            {
               return false;
            }
         }
         return true;
      }
      
      public function update() : void
      {
         var _loc1_:§+4§ = null;
         for each(_loc1_ in this.§&#-§)
         {
            _loc1_.update(this);
         }
      }
      
      public function §"">§(param1:Class) : §3"l§
      {
         if(this.§]t§[param1] != null)
         {
            return this.§]t§[param1] as §3"l§;
         }
         return null;
      }
      
      public function get persistence() : §?!;§
      {
         return this.§#L§.persistence;
      }
      
      public function get §[![§() : §!!%§
      {
         return this.§#L§;
      }
      
      public function get §9!T§() : §7#C§
      {
         return this.§-"x§;
      }
      
      public function get §>"[§() : §+"d§
      {
         return this.§-"_§;
      }
      
      public function get §76§() : DisplayObjectContainer
      {
         return this.§5![§;
      }
      
      public function get §4""§() : DisplayObjectContainer
      {
         return this.§6u§;
      }
      
      public function get §>!P§() : DisplayObjectContainer
      {
         return this.§^"&§;
      }
      
      public function get §'#U§() : §"!5§
      {
         return this.§-!z§;
      }
      
      public function get §]"z§() : §>l§
      {
         return this.§#L§.§]"z§;
      }
   }
}
