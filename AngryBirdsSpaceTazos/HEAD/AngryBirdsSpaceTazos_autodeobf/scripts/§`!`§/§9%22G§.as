package §`!`§
{
   import §&!]§.§7!J§;
   import §&!]§.Sprite;
   import §'!B§.§8T§;
   import §9!v§.§6a§;
   import §>"2§.§8k§;
   
   public class §9"G§
   {
      
      public static const §^!e§:String = "CutScene_Type_Intro";
      
      public static const §]"0§:String = "CutScene_Type_Outro";
      
      public static const §7"$§:String = "CutScene_Type_Final_Outro";
       
      
      private var §@k§:§6a§;
      
      private var §%!!§:String;
      
      private var §`!Y§:Vector.<§=j§>;
      
      private var §6!q§:Number;
      
      private var §2"G§:Number;
      
      private var §]!d§:Number;
      
      private var §!"-§:Number;
      
      private var §5"'§:Sprite;
      
      private var §'Q§:Boolean = true;
      
      private var §9!+§:uint;
      
      private var §-! §:Boolean;
      
      private var §3![§:§7!J§;
      
      private var §>O§:§7!J§;
      
      public function §9"G§(param1:Object, param2:String)
      {
         var _loc3_:§=j§ = null;
         var _loc4_:Object = null;
         this.§`!Y§ = new Vector.<§=j§>();
         super();
         this.§6!q§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§%!!§ = §^!e§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§%!!§ = §]"0§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§@!&§(_loc4_);
               if(_loc3_)
               {
                  this.§`!Y§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§`!Y§)
            {
               if(_loc3_ is §=!y§)
               {
                  (_loc3_ as §=!y§).setSize(this.§]!d§,this.§!"-§);
                  (_loc3_ as §=!y§).§4!q§ = this.§'Q§;
               }
               else if(_loc3_ is §>!P§)
               {
                  (_loc3_ as §>!P§).setSize(this.§]!d§,this.§!"-§);
                  (_loc3_ as §>!P§).§"R§ = this.§'Q§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§5"'§;
      }
      
      private function §@!&§(param1:Object) : §=j§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §=j§.§%z§:
               return new §>!P§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §=j§.§;!3§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §=!y§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §=j§.§0!J§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §7!N§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §=j§.§&!a§:
               return new §!!n§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §=j§.§2!0§:
               this.§2"G§ = param1.time * 1000;
               break;
            case §=j§.§1!Y§:
               this.§]!d§ = param1.width;
               this.§!"-§ = param1.height;
               break;
            case §=j§.§6!J§:
               this.§'Q§ = false;
               break;
            case §=j§.§8!6§:
               this.§'Q§ = true;
               break;
            case §=j§.§"!%§:
               this.§9!+§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§5"'§)
         {
            this.§5"'§.dispose();
            this.§5"'§ = null;
         }
         this.§`!Y§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§5"'§)
         {
            this.§5"'§ = new Sprite();
         }
         this.§6!q§ += param1;
         var _loc2_:int = this.§`!Y§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§`!Y§[_loc2_].update(this.§6!q§,this.§5"'§,this.§@k§))
            {
               this.§`!Y§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§[Y§();
         this.§!&§();
         this.§'!_§();
         return this.§6!q§ < this.§2"G§;
      }
      
      private function §'!_§() : void
      {
         var _loc1_:int = §8T§.§5"-§.height;
         var _loc2_:Number = §8k§.§`"5§;
         var _loc3_:Number = §8k§.§&i§;
         var _loc4_:int = (_loc1_ - this.§!"-§ * _loc2_) / _loc2_;
         this.§5"'§.y = _loc4_ >> 1;
      }
      
      private function §[Y§() : void
      {
         §8T§.§5!Y§.color = this.§9!+§;
      }
      
      private function §!&§() : void
      {
         if(this.§-! §)
         {
            return;
         }
         var _loc1_:Sprite = this.§5"'§.getChildByName(§>!P§.§9@§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§-! § = true;
      }
      
      public function clone(param1:§6a§) : §9"G§
      {
         var _loc3_:§=j§ = null;
         var _loc2_:§9"G§ = new §9"G§(null,null);
         for each(_loc3_ in this.§`!Y§)
         {
            _loc2_.§`!Y§.push(_loc3_.clone());
         }
         _loc2_.§6!q§ = this.§6!q§;
         _loc2_.§2"G§ = this.§2"G§;
         _loc2_.§]!d§ = this.§]!d§;
         _loc2_.§!"-§ = this.§!"-§;
         _loc2_.§'Q§ = this.§'Q§;
         _loc2_.§9!+§ = this.§9!+§;
         _loc2_.§%!!§ = this.§%!!§;
         _loc2_.§@k§ = param1;
         return _loc2_;
      }
      
      public function get §?!u§() : String
      {
         return this.§%!!§;
      }
      
      public function set §?!u§(param1:String) : void
      {
         this.§%!!§ = param1;
      }
   }
}
