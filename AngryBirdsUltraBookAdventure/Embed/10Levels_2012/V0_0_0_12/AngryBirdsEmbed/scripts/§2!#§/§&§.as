package §2!#§
{
   import §"!5§.§,!!§;
   import §&p§.§'_§;
   import §-!0§.§'!3§;
   import §?^§.§?C§;
   import §?^§.Sprite;
   
   public class §&§
   {
      
      public static const §[Z§:String = "CutScene_Type_Intro";
      
      public static const §<!G§:String = "CutScene_Type_Outro";
      
      public static const §#v§:String = "CutScene_Type_Final_Outro";
       
      
      private var § 7§:§'!3§;
      
      private var §]R§:String;
      
      private var §'Y§:Vector.<§,1§>;
      
      private var §=,§:Number;
      
      private var §8!F§:Number;
      
      private var §9p§:Number;
      
      private var §9`§:Number;
      
      private var §0W§:Sprite;
      
      private var §0Z§:Boolean = true;
      
      private var §6!$§:uint;
      
      private var §?F§:Boolean;
      
      private var §1m§:§?C§;
      
      private var §36§:§?C§;
      
      public function §&§(param1:Object, param2:String)
      {
         var _loc3_:§,1§ = null;
         var _loc4_:Object = null;
         this.§'Y§ = new Vector.<§,1§>();
         super();
         this.§=,§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§]R§ = §[Z§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§]R§ = §<!G§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.native(_loc4_);
               if(_loc3_)
               {
                  this.§'Y§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§'Y§)
            {
               if(_loc3_ is §`5§)
               {
                  (_loc3_ as §`5§).setSize(this.§9p§,this.§9`§);
                  (_loc3_ as §`5§).§1!2§ = this.§0Z§;
               }
               else if(_loc3_ is §>R§)
               {
                  (_loc3_ as §>R§).setSize(this.§9p§,this.§9`§);
                  (_loc3_ as §>R§).override = this.§0Z§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§0W§;
      }
      
      private function native(param1:Object) : §,1§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §,1§.§@8§:
               return new §>R§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §,1§.§3M§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §`5§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §,1§.§2Y§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §!k§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §,1§.§&!3§:
               return new §3!"§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §,1§.END:
               this.§8!F§ = param1.time * 1000;
               break;
            case §,1§.§>L§:
               this.§9p§ = param1.width;
               this.§9`§ = param1.height;
               break;
            case §,1§.§]-§:
               this.§0Z§ = false;
               break;
            case §,1§.§&>§:
               this.§0Z§ = true;
               break;
            case §,1§.§1§:
               this.§6!$§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§0W§)
         {
            this.§0W§.dispose();
            this.§0W§ = null;
         }
         this.§'Y§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§0W§)
         {
            this.§0W§ = new Sprite();
         }
         this.§=,§ += param1;
         var _loc2_:int = this.§'Y§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§'Y§[_loc2_].update(this.§=,§,this.§0W§,this.§ 7§))
            {
               this.§'Y§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§^U§();
         this.§4e§();
         this.§?%§();
         return this.§=,§ < this.§8!F§;
      }
      
      private function §?%§() : void
      {
         var _loc1_:int = §'_§.§17§.§^w§.height;
         var _loc2_:Number = §,!!§.§0!3§;
         var _loc3_:Number = §,!!§.§,`§;
         var _loc4_:int = (_loc1_ - this.§9`§ * _loc2_) / _loc2_;
         this.§0W§.y = _loc4_ >> 1;
      }
      
      private function §^U§() : void
      {
         §'_§.§17§.color = this.§6!$§;
      }
      
      private function §4e§() : void
      {
         if(this.§?F§)
         {
            return;
         }
         var _loc1_:Sprite = this.§0W§.getChildByName(§>R§.§1S§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§?F§ = true;
      }
      
      public function clone(param1:§'!3§) : §&§
      {
         var _loc3_:§,1§ = null;
         var _loc2_:§&§ = new §&§(null,null);
         for each(_loc3_ in this.§'Y§)
         {
            _loc2_.§'Y§.push(_loc3_.clone());
         }
         _loc2_.§=,§ = this.§=,§;
         _loc2_.§8!F§ = this.§8!F§;
         _loc2_.§9p§ = this.§9p§;
         _loc2_.§9`§ = this.§9`§;
         _loc2_.§0Z§ = this.§0Z§;
         _loc2_.§6!$§ = this.§6!$§;
         _loc2_.§]R§ = this.§]R§;
         _loc2_.§ 7§ = param1;
         return _loc2_;
      }
      
      public function get §>!+§() : String
      {
         return this.§]R§;
      }
      
      public function set §>!+§(param1:String) : void
      {
         this.§]R§ = param1;
      }
   }
}
