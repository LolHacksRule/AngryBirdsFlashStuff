package §_-n§
{
   import §_-0Ea§.§_-AY§;
   import §_-8d§.§_-0FF§;
   import §_-qO§.§ in§;
   import §_-uY§.Sprite;
   import §_-uY§.§_-2p§;
   
   public class §_-0BF§
   {
      
      public static const native:String = "CutScene_Type_Intro";
      
      public static const §_-k5§:String = "CutScene_Type_Outro";
      
      public static const §_-rm§:String = "CutScene_Type_Final_Outro";
       
      
      private var §_-00g§:§_-0FF§;
      
      private var §_-uA§:String;
      
      private var §_-jv§:Vector.<§_-tC§>;
      
      private var §_-063§:Number;
      
      private var §_-R8§:Number;
      
      private var §_-ux§:Number;
      
      private var §_-09f§:Number;
      
      private var §_-FQ§:Sprite;
      
      private var §_-0EB§:Boolean = true;
      
      private var § null§:uint;
      
      private var §_-Xf§:Boolean;
      
      private var §_-dw§:§_-2p§;
      
      private var §_-01z§:§_-2p§;
      
      public function §_-0BF§(param1:Object, param2:String)
      {
         var _loc3_:§_-tC§ = null;
         var _loc4_:Object = null;
         this.§_-jv§ = new Vector.<§_-tC§>();
         super();
         this.§_-063§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§_-uA§ = native;
            }
            else if(param2.search("complete") != -1)
            {
               this.§_-uA§ = §_-k5§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§_-2G§(_loc4_);
               if(_loc3_)
               {
                  this.§_-jv§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§_-jv§)
            {
               if(_loc3_ is §_-O4§)
               {
                  (_loc3_ as §_-O4§).setSize(this.§_-ux§,this.§_-09f§);
                  (_loc3_ as §_-O4§).§_-RR§ = this.§_-0EB§;
               }
               else if(_loc3_ is §_-fn§)
               {
                  (_loc3_ as §_-fn§).setSize(this.§_-ux§,this.§_-09f§);
                  (_loc3_ as §_-fn§).§_-pm§ = this.§_-0EB§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-FQ§;
      }
      
      private function §_-2G§(param1:Object) : §_-tC§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §_-tC§.§_-031§:
               return new §_-fn§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §_-tC§.§_-DX§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §_-O4§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §_-tC§.§_-Cg§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §_-MA§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §_-tC§.§_-Rs§:
               return new §_-9l§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §_-tC§.END:
               this.§_-R8§ = param1.time * 1000;
               break;
            case §_-tC§.§_-Bj§:
               this.§_-ux§ = param1.width;
               this.§_-09f§ = param1.height;
               break;
            case §_-tC§.§_-6q§:
               this.§_-0EB§ = false;
               break;
            case §_-tC§.§_-05G§:
               this.§_-0EB§ = true;
               break;
            case §_-tC§.§_-Cz§:
               this.§ null§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§_-FQ§)
         {
            this.§_-FQ§.dispose();
            this.§_-FQ§ = null;
         }
         this.§_-jv§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§_-FQ§)
         {
            this.§_-FQ§ = new Sprite();
         }
         this.§_-063§ += param1;
         var _loc2_:int = this.§_-jv§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§_-jv§[_loc2_].update(this.§_-063§,this.§_-FQ§,this.§_-00g§))
            {
               this.§_-jv§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§_-f6§();
         this.§_-Vd§();
         this.§_-kN§();
         return this.§_-063§ < this.§_-R8§;
      }
      
      private function §_-kN§() : void
      {
         var _loc1_:int = §_-AY§.§_-un§.§_-Lj§.height;
         var _loc2_:Number = § in§.§_-57§;
         var _loc3_:Number = § in§.§_-Sr§;
         var _loc4_:int = (_loc1_ - this.§_-09f§ * _loc2_) / _loc2_;
         this.§_-FQ§.y = _loc4_ >> 1;
      }
      
      private function §_-f6§() : void
      {
         §_-AY§.§_-un§.color = this.§ null§;
      }
      
      private function §_-Vd§() : void
      {
         if(this.§_-Xf§)
         {
            return;
         }
         var _loc1_:Sprite = this.§_-FQ§.getChildByName(§_-fn§.§_-a9§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§_-Xf§ = true;
      }
      
      public function clone(param1:§_-0FF§) : §_-0BF§
      {
         var _loc3_:§_-tC§ = null;
         var _loc2_:§_-0BF§ = new §_-0BF§(null,null);
         for each(_loc3_ in this.§_-jv§)
         {
            _loc2_.§_-jv§.push(_loc3_.clone());
         }
         _loc2_.§_-063§ = this.§_-063§;
         _loc2_.§_-R8§ = this.§_-R8§;
         _loc2_.§_-ux§ = this.§_-ux§;
         _loc2_.§_-09f§ = this.§_-09f§;
         _loc2_.§_-0EB§ = this.§_-0EB§;
         _loc2_.§ null§ = this.§ null§;
         _loc2_.§_-uA§ = this.§_-uA§;
         _loc2_.§_-00g§ = param1;
         return _loc2_;
      }
      
      public function get §_-01k§() : String
      {
         return this.§_-uA§;
      }
      
      public function set §_-01k§(param1:String) : void
      {
         this.§_-uA§ = param1;
      }
   }
}
