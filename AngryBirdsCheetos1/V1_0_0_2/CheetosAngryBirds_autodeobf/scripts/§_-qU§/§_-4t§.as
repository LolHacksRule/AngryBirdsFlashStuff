package §_-qU§
{
   import §_-94§.§_-si§;
   import §_-GY§.Sprite;
   import §_-GY§.§_-Bf§;
   import §_-Ye§.§_-cP§;
   import §_-my§.§_-V0§;
   
   public class §_-4t§
   {
      
      public static const §_-AW§:String = "CutScene_Type_Intro";
      
      public static const §_-pk§:String = "CutScene_Type_Outro";
      
      public static const §_-9d§:String = "CutScene_Type_Final_Outro";
       
      
      private var §_-B1§:§_-V0§;
      
      private var §_-aT§:String;
      
      private var §_-mN§:Vector.<§_-BV§>;
      
      private var §_-RE§:Number;
      
      private var §_-RJ§:Number;
      
      private var §_-a9§:Number;
      
      private var §_-7y§:Number;
      
      private var §_-xQ§:Sprite;
      
      private var §_-cd§:Boolean = true;
      
      private var §_-AS§:uint;
      
      private var §_-N-§:Boolean;
      
      private var §_-O3§:§_-Bf§;
      
      private var §_-sh§:§_-Bf§;
      
      public function §_-4t§(param1:Object, param2:String)
      {
         var _loc3_:§_-BV§ = null;
         var _loc4_:Object = null;
         this.§_-mN§ = new Vector.<§_-BV§>();
         super();
         this.§_-RE§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§_-aT§ = §_-AW§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§_-aT§ = §_-pk§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§_-cc§(_loc4_);
               if(_loc3_)
               {
                  this.§_-mN§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§_-mN§)
            {
               if(_loc3_ is §_-LE§)
               {
                  (_loc3_ as §_-LE§).§_-z7§(this.§_-a9§,this.§_-7y§);
                  (_loc3_ as §_-LE§).§_-aK§ = this.§_-cd§;
               }
               else if(_loc3_ is §_-SK§)
               {
                  (_loc3_ as §_-SK§).§_-z7§(this.§_-a9§,this.§_-7y§);
                  (_loc3_ as §_-SK§).§_-0-9§ = this.§_-cd§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-xQ§;
      }
      
      private function §_-cc§(param1:Object) : §_-BV§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §_-BV§.§_-xT§:
               return new §_-SK§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §_-BV§.§_-j3§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §_-LE§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §_-BV§.§_-qW§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §_-t0§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §_-BV§.§_-dp§:
               return new §_-et§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §_-BV§.END:
               this.§_-RJ§ = param1.time * 1000;
               break;
            case §_-BV§.§_-qm§:
               this.§_-a9§ = param1.width;
               this.§_-7y§ = param1.height;
               break;
            case §_-BV§.§_-K6§:
               this.§_-cd§ = false;
               break;
            case §_-BV§.§_-OM§:
               this.§_-cd§ = true;
               break;
            case §_-BV§.§_-nC§:
               this.§_-AS§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§_-xQ§)
         {
            this.§_-xQ§.dispose();
            this.§_-xQ§ = null;
         }
         this.§_-mN§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§_-xQ§)
         {
            this.§_-xQ§ = new Sprite();
         }
         this.§_-RE§ += param1;
         var _loc2_:int = this.§_-mN§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§_-mN§[_loc2_].update(this.§_-RE§,this.§_-xQ§,this.§_-B1§))
            {
               this.§_-mN§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§_-MY§();
         this.§_-nG§();
         this.§_-YN§();
         return this.§_-RE§ < this.§_-RJ§;
      }
      
      private function §_-YN§() : void
      {
         var _loc1_:int = §_-cP§.§_-004§.§_-Uf§.height;
         var _loc2_:Number = §_-si§.§_-gP§;
         var _loc3_:Number = §_-si§.§_-3a§;
         var _loc4_:int = (_loc1_ - this.§_-7y§ * _loc2_) / _loc2_;
         this.§_-xQ§.y = _loc4_ >> 1;
      }
      
      private function §_-MY§() : void
      {
         §_-cP§.§_-004§.color = this.§_-AS§;
      }
      
      private function §_-nG§() : void
      {
         if(this.§_-N-§)
         {
            return;
         }
         var _loc1_:Sprite = this.§_-xQ§.getChildByName(§_-SK§.§_-gp§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§_-N-§ = true;
      }
      
      public function clone(param1:§_-V0§) : §_-4t§
      {
         var _loc3_:§_-BV§ = null;
         var _loc2_:§_-4t§ = new §_-4t§(null,null);
         for each(_loc3_ in this.§_-mN§)
         {
            _loc2_.§_-mN§.push(_loc3_.clone());
         }
         _loc2_.§_-RE§ = this.§_-RE§;
         _loc2_.§_-RJ§ = this.§_-RJ§;
         _loc2_.§_-a9§ = this.§_-a9§;
         _loc2_.§_-7y§ = this.§_-7y§;
         _loc2_.§_-cd§ = this.§_-cd§;
         _loc2_.§_-AS§ = this.§_-AS§;
         _loc2_.§_-aT§ = this.§_-aT§;
         _loc2_.§_-B1§ = param1;
         return _loc2_;
      }
      
      public function get §_-qi§() : String
      {
         return this.§_-aT§;
      }
      
      public function set §_-qi§(param1:String) : void
      {
         this.§_-aT§ = param1;
      }
   }
}
