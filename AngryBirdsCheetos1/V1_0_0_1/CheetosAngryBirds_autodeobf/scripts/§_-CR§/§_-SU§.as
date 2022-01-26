package §_-CR§
{
   import §_-5p§.§_-Kf§;
   import §_-Ls§.Sprite;
   import §_-Ls§.§_-nY§;
   import §_-gC§.§_-XR§;
   import §_-vB§.§_-Kk§;
   
   public class §_-SU§
   {
      
      public static const §_-qZ§:String = "CutScene_Type_Intro";
      
      public static const §_-yT§:String = "CutScene_Type_Outro";
      
      public static const §_-eT§:String = "CutScene_Type_Final_Outro";
       
      
      private var §_-S7§:§_-Kf§;
      
      private var §_-DQ§:String;
      
      private var §_-Db§:Vector.<§_-Lj§>;
      
      private var §_-pE§:Number;
      
      private var §_-il§:Number;
      
      private var §_-aC§:Number;
      
      private var §_-3v§:Number;
      
      private var §_-S0§:Sprite;
      
      private var §_-ci§:Boolean = true;
      
      private var §_-St§:uint;
      
      private var §_-w7§:Boolean;
      
      private var §_-oD§:§_-nY§;
      
      private var §_-UU§:§_-nY§;
      
      public function §_-SU§(param1:Object, param2:String)
      {
         var _loc3_:§_-Lj§ = null;
         var _loc4_:Object = null;
         this.§_-Db§ = new Vector.<§_-Lj§>();
         super();
         this.§_-pE§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§_-DQ§ = §_-qZ§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§_-DQ§ = §_-yT§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§_-pY§(_loc4_);
               if(_loc3_)
               {
                  this.§_-Db§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§_-Db§)
            {
               if(_loc3_ is §_-n3§)
               {
                  (_loc3_ as §_-n3§).§_-Ql§(this.§_-aC§,this.§_-3v§);
                  (_loc3_ as §_-n3§).§_-P6§ = this.§_-ci§;
               }
               else if(_loc3_ is §_-Sq§)
               {
                  (_loc3_ as §_-Sq§).§_-Ql§(this.§_-aC§,this.§_-3v§);
                  (_loc3_ as §_-Sq§).§_-76§ = this.§_-ci§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-S0§;
      }
      
      private function §_-pY§(param1:Object) : §_-Lj§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §_-Lj§.§_-h2§:
               return new §_-Sq§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §_-Lj§.§_-c§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §_-n3§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §_-Lj§.§_-Ur§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §_-Vs§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §_-Lj§.§_-mu§:
               return new §_-XV§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §_-Lj§.END:
               this.§_-il§ = param1.time * 1000;
               break;
            case §_-Lj§.§_-kz§:
               this.§_-aC§ = param1.width;
               this.§_-3v§ = param1.height;
               break;
            case §_-Lj§.§_-Mr§:
               this.§_-ci§ = false;
               break;
            case §_-Lj§.§_-y0§:
               this.§_-ci§ = true;
               break;
            case §_-Lj§.§_-CT§:
               this.§_-St§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§_-S0§)
         {
            this.§_-S0§.dispose();
            this.§_-S0§ = null;
         }
         this.§_-Db§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§_-S0§)
         {
            this.§_-S0§ = new Sprite();
         }
         this.§_-pE§ += param1;
         var _loc2_:int = this.§_-Db§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§_-Db§[_loc2_].update(this.§_-pE§,this.§_-S0§,this.§_-S7§))
            {
               this.§_-Db§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§_-yh§();
         this.§_-Ib§();
         this.§_-eI§();
         return this.§_-pE§ < this.§_-il§;
      }
      
      private function §_-eI§() : void
      {
         var _loc1_:int = §_-Kk§.§_-NR§.§_-Px§.height;
         var _loc2_:Number = §_-XR§.§_-BS§;
         var _loc3_:Number = §_-XR§.§_-Rt§;
         var _loc4_:int = (_loc1_ - this.§_-3v§ * _loc2_) / _loc2_;
         this.§_-S0§.y = _loc4_ >> 1;
      }
      
      private function §_-yh§() : void
      {
         §_-Kk§.§_-NR§.color = this.§_-St§;
      }
      
      private function §_-Ib§() : void
      {
         if(this.§_-w7§)
         {
            return;
         }
         var _loc1_:Sprite = this.§_-S0§.getChildByName(§_-Sq§.§_-i2§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§_-w7§ = true;
      }
      
      public function clone(param1:§_-Kf§) : §_-SU§
      {
         var _loc3_:§_-Lj§ = null;
         var _loc2_:§_-SU§ = new §_-SU§(null,null);
         for each(_loc3_ in this.§_-Db§)
         {
            _loc2_.§_-Db§.push(_loc3_.clone());
         }
         _loc2_.§_-pE§ = this.§_-pE§;
         _loc2_.§_-il§ = this.§_-il§;
         _loc2_.§_-aC§ = this.§_-aC§;
         _loc2_.§_-3v§ = this.§_-3v§;
         _loc2_.§_-ci§ = this.§_-ci§;
         _loc2_.§_-St§ = this.§_-St§;
         _loc2_.§_-DQ§ = this.§_-DQ§;
         _loc2_.§_-S7§ = param1;
         return _loc2_;
      }
      
      public function get §_-10§() : String
      {
         return this.§_-DQ§;
      }
      
      public function set §_-10§(param1:String) : void
      {
         this.§_-DQ§ = param1;
      }
   }
}
