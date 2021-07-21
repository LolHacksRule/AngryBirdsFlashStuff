package §%%§
{
   import §%c§.§=!X§;
   import §&"5§.§7!P§;
   import §6p§.§?%§;
   import §default§.Sprite;
   import §default§.§^$§;
   
   public class §6!_§
   {
      
      public static const §61§:String = "CutScene_Type_Intro";
      
      public static const §7_§:String = "CutScene_Type_Outro";
      
      public static const §0!Q§:String = "CutScene_Type_Final_Outro";
       
      
      private var §2"!§:§7!P§;
      
      private var §1t§:String;
      
      private var §]!7§:Vector.<§#K§>;
      
      private var §7A§:Number;
      
      private var §7X§:Number;
      
      private var §7!T§:Number;
      
      private var §>w§:Number;
      
      private var §!&§:Sprite;
      
      private var §2!6§:Boolean = true;
      
      private var §<5§:uint;
      
      private var §&+§:Boolean;
      
      private var §7V§:§^$§;
      
      private var §!-§:§^$§;
      
      public function §6!_§(param1:Object, param2:String)
      {
         var _loc3_:§#K§ = null;
         var _loc4_:Object = null;
         this.§]!7§ = new Vector.<§#K§>();
         super();
         this.§7A§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§1t§ = §61§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§1t§ = §7_§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§'_§(_loc4_);
               if(_loc3_)
               {
                  this.§]!7§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§]!7§)
            {
               if(_loc3_ is §,g§)
               {
                  (_loc3_ as §,g§).setSize(this.§7!T§,this.§>w§);
                  (_loc3_ as §,g§).§<A§ = this.§2!6§;
               }
               else if(_loc3_ is §^d§)
               {
                  (_loc3_ as §^d§).setSize(this.§7!T§,this.§>w§);
                  (_loc3_ as §^d§).§1S§ = this.§2!6§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§!&§;
      }
      
      private function §'_§(param1:Object) : §#K§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §#K§.§5L§:
               return new §^d§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §#K§.§;!W§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §,g§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §#K§.§-!i§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §+!5§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §#K§.§-v§:
               return new §1;§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §#K§.END:
               this.§7X§ = param1.time * 1000;
               break;
            case §#K§.§@"9§:
               this.§7!T§ = param1.width;
               this.§>w§ = param1.height;
               break;
            case §#K§.§9b§:
               this.§2!6§ = false;
               break;
            case §#K§.§5X§:
               this.§2!6§ = true;
               break;
            case §#K§.§`i§:
               this.§<5§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§!&§)
         {
            this.§!&§.dispose();
            this.§!&§ = null;
         }
         this.§]!7§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§!&§)
         {
            this.§!&§ = new Sprite();
         }
         this.§7A§ += param1;
         var _loc2_:int = this.§]!7§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§]!7§[_loc2_].update(this.§7A§,this.§!&§,this.§2"!§))
            {
               this.§]!7§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§2§();
         this.§1Q§();
         this.§][§();
         return this.§7A§ < this.§7X§;
      }
      
      private function §][§() : void
      {
         var _loc1_:int = §?%§.§%b§.§[A§.height;
         var _loc2_:Number = §=!X§.§@"6§;
         var _loc3_:Number = §=!X§.§ !4§;
         var _loc4_:int = (_loc1_ - this.§>w§ * _loc2_) / _loc2_;
         this.§!&§.y = _loc4_ >> 1;
      }
      
      private function §2§() : void
      {
         §?%§.§%b§.color = this.§<5§;
      }
      
      private function §1Q§() : void
      {
         if(this.§&+§)
         {
            return;
         }
         var _loc1_:Sprite = this.§!&§.getChildByName(§^d§.§8Z§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§&+§ = true;
      }
      
      public function clone(param1:§7!P§) : §6!_§
      {
         var _loc3_:§#K§ = null;
         var _loc2_:§6!_§ = new §6!_§(null,null);
         for each(_loc3_ in this.§]!7§)
         {
            _loc2_.§]!7§.push(_loc3_.clone());
         }
         _loc2_.§7A§ = this.§7A§;
         _loc2_.§7X§ = this.§7X§;
         _loc2_.§7!T§ = this.§7!T§;
         _loc2_.§>w§ = this.§>w§;
         _loc2_.§2!6§ = this.§2!6§;
         _loc2_.§<5§ = this.§<5§;
         _loc2_.§1t§ = this.§1t§;
         _loc2_.§2"!§ = param1;
         return _loc2_;
      }
      
      public function get §^v§() : String
      {
         return this.§1t§;
      }
      
      public function set §^v§(param1:String) : void
      {
         this.§1t§ = param1;
      }
   }
}
