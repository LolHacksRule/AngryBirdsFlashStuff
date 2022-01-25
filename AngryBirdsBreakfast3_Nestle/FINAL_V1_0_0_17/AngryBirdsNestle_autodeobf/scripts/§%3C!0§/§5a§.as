package §<!0§
{
   import §!!!§.§6!l§;
   import §0!m§.§@!S§;
   import §2`§.§%!!§;
   import §3!J§.§8!l§;
   import §3!J§.Sprite;
   
   public class §5a§
   {
      
      public static const §'"8§:String = "CutScene_Type_Intro";
      
      public static const §9!u§:String = "CutScene_Type_Outro";
      
      public static const §;"$§:String = "CutScene_Type_Final_Outro";
       
      
      private var §,%§:§%!!§;
      
      private var § K§:String;
      
      private var §,N§:Vector.<§=!?§>;
      
      private var §'0§:Number;
      
      private var §;?§:Number;
      
      private var §!a§:Number;
      
      private var §2!y§:Number;
      
      private var §&%§:Sprite;
      
      private var §'!?§:Boolean = true;
      
      private var §+!&§:uint;
      
      private var §&r§:Boolean;
      
      private var §'m§:§8!l§;
      
      private var §>L§:§8!l§;
      
      public function §5a§(param1:Object, param2:String)
      {
         var _loc3_:§=!?§ = null;
         var _loc4_:Object = null;
         this.§,N§ = new Vector.<§=!?§>();
         super();
         this.§'0§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§ K§ = §'"8§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§ K§ = §9!u§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§^[§(_loc4_);
               if(_loc3_)
               {
                  this.§,N§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§,N§)
            {
               if(_loc3_ is §0!A§)
               {
                  (_loc3_ as §0!A§).setSize(this.§!a§,this.§2!y§);
                  (_loc3_ as §0!A§).horizontal = this.§'!?§;
               }
               else if(_loc3_ is §%C§)
               {
                  (_loc3_ as §%C§).setSize(this.§!a§,this.§2!y§);
                  (_loc3_ as §%C§).§&!w§ = this.§'!?§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§&%§;
      }
      
      private function §^[§(param1:Object) : §=!?§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §=!?§.§@o§:
               return new §%C§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §=!?§.SCROLL:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §0!A§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §=!?§.§[!v§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §!!"§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §=!?§.§`!1§:
               return new §6e§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §=!?§.END:
               this.§;?§ = param1.time * 1000;
               break;
            case §=!?§.§%",§:
               this.§!a§ = param1.width;
               this.§2!y§ = param1.height;
               break;
            case §=!?§.§3!X§:
               this.§'!?§ = false;
               break;
            case §=!?§.§1!6§:
               this.§'!?§ = true;
               break;
            case §=!?§.§`P§:
               this.§+!&§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§&%§)
         {
            this.§&%§.dispose();
            this.§&%§ = null;
         }
         this.§,N§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§&%§)
         {
            this.§&%§ = new Sprite();
         }
         this.§'0§ += param1;
         var _loc2_:int = this.§,N§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§,N§[_loc2_].update(this.§'0§,this.§&%§,this.§,%§))
            {
               this.§,N§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§"S§();
         this.§#"$§();
         this.§[9§();
         return this.§'0§ < this.§;?§;
      }
      
      private function §[9§() : void
      {
         var _loc1_:int = §6!l§.§7!w§.height;
         var _loc2_:Number = §@!S§.§5!e§;
         var _loc3_:Number = §@!S§.§+!q§;
         var _loc4_:int = (_loc1_ - this.§2!y§ * _loc2_) / _loc2_;
         this.§&%§.y = _loc4_ >> 1;
      }
      
      private function §"S§() : void
      {
         §6!l§.§+J§.color = this.§+!&§;
      }
      
      private function §#"$§() : void
      {
         if(this.§&r§)
         {
            return;
         }
         var _loc1_:Sprite = this.§&%§.getChildByName(§%C§.§<!'§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§&r§ = true;
      }
      
      public function clone(param1:§%!!§) : §5a§
      {
         var _loc3_:§=!?§ = null;
         var _loc2_:§5a§ = new §5a§(null,null);
         for each(_loc3_ in this.§,N§)
         {
            _loc2_.§,N§.push(_loc3_.clone());
         }
         _loc2_.§'0§ = this.§'0§;
         _loc2_.§;?§ = this.§;?§;
         _loc2_.§!a§ = this.§!a§;
         _loc2_.§2!y§ = this.§2!y§;
         _loc2_.§'!?§ = this.§'!?§;
         _loc2_.§+!&§ = this.§+!&§;
         _loc2_.§ K§ = this.§ K§;
         _loc2_.§,%§ = param1;
         return _loc2_;
      }
      
      public function get §&p§() : String
      {
         return this.§ K§;
      }
      
      public function set §&p§(param1:String) : void
      {
         this.§ K§ = param1;
      }
   }
}
