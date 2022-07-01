package §!-§
{
   import §'x§.§?z§;
   import §0P§.§!!l§;
   import §1!Y§.§5!W§;
   import §1!Y§.Sprite;
   import §[_§.§2!B§;
   
   public class §1!P§
   {
      
      public static const §;!"§:String = "CutScene_Type_Intro";
      
      public static const §8^§:String = "CutScene_Type_Outro";
      
      public static const §5!L§:String = "CutScene_Type_Final_Outro";
       
      
      private var §3!W§:§2!B§;
      
      private var §-!_§:String;
      
      private var §6!"§:Vector.<§[u§>;
      
      private var §]!p§:Number;
      
      private var §?!d§:Number;
      
      private var §1§:Number;
      
      private var §+!4§:Number;
      
      private var § "5§:Sprite;
      
      private var §^!j§:Boolean = true;
      
      private var §@!^§:uint;
      
      private var §#>§:Boolean;
      
      private var §^!9§:§5!W§;
      
      private var §<§:§5!W§;
      
      public function §1!P§(param1:Object, param2:String)
      {
         var _loc3_:§[u§ = null;
         var _loc4_:Object = null;
         this.§6!"§ = new Vector.<§[u§>();
         super();
         this.§]!p§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§-!_§ = §;!"§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§-!_§ = §8^§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§?§(_loc4_);
               if(_loc3_)
               {
                  this.§6!"§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§6!"§)
            {
               if(_loc3_ is §@" §)
               {
                  (_loc3_ as §@" §).setSize(this.§1§,this.§+!4§);
                  (_loc3_ as §@" §).§&_§ = this.§^!j§;
               }
               else if(_loc3_ is §5A§)
               {
                  (_loc3_ as §5A§).setSize(this.§1§,this.§+!4§);
                  (_loc3_ as §5A§).§1!<§ = this.§^!j§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§ "5§;
      }
      
      private function §?§(param1:Object) : §[u§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §[u§.§5!k§:
               return new §5A§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §[u§.§#[§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §@" §(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §[u§.§-;§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §^!B§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §[u§.§^!$§:
               return new §[f§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §[u§.END:
               this.§?!d§ = param1.time * 1000;
               break;
            case §[u§.§6M§:
               this.§1§ = param1.width;
               this.§+!4§ = param1.height;
               break;
            case §[u§.§,!=§:
               this.§^!j§ = false;
               break;
            case §[u§.§7g§:
               this.§^!j§ = true;
               break;
            case §[u§.§&!;§:
               this.§@!^§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§ "5§)
         {
            this.§ "5§.dispose();
            this.§ "5§ = null;
         }
         this.§6!"§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§ "5§)
         {
            this.§ "5§ = new Sprite();
         }
         this.§]!p§ += param1;
         var _loc2_:int = this.§6!"§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§6!"§[_loc2_].update(this.§]!p§,this.§ "5§,this.§3!W§))
            {
               this.§6!"§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§'!-§();
         this.§,a§();
         this.§!!V§();
         return this.§]!p§ < this.§?!d§;
      }
      
      private function §!!V§() : void
      {
         var _loc1_:int = §!!l§.§`7§.§35§.height;
         var _loc2_:Number = §?z§.§'!<§;
         var _loc3_:Number = §?z§.§%!K§;
         var _loc4_:int = (_loc1_ - this.§+!4§ * _loc2_) / _loc2_;
         this.§ "5§.y = _loc4_ >> 1;
      }
      
      private function §'!-§() : void
      {
         §!!l§.§`7§.color = this.§@!^§;
      }
      
      private function §,a§() : void
      {
         if(this.§#>§)
         {
            return;
         }
         var _loc1_:Sprite = this.§ "5§.getChildByName(§5A§.§+!U§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§#>§ = true;
      }
      
      public function clone(param1:§2!B§) : §1!P§
      {
         var _loc3_:§[u§ = null;
         var _loc2_:§1!P§ = new §1!P§(null,null);
         for each(_loc3_ in this.§6!"§)
         {
            _loc2_.§6!"§.push(_loc3_.clone());
         }
         _loc2_.§]!p§ = this.§]!p§;
         _loc2_.§?!d§ = this.§?!d§;
         _loc2_.§1§ = this.§1§;
         _loc2_.§+!4§ = this.§+!4§;
         _loc2_.§^!j§ = this.§^!j§;
         _loc2_.§@!^§ = this.§@!^§;
         _loc2_.§-!_§ = this.§-!_§;
         _loc2_.§3!W§ = param1;
         return _loc2_;
      }
      
      public function get §8K§() : String
      {
         return this.§-!_§;
      }
      
      public function set §8K§(param1:String) : void
      {
         this.§-!_§ = param1;
      }
   }
}
