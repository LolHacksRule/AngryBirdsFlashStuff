package §_-00f§
{
   import §_-4I§.§_-v8§;
   import §_-KM§.§_-0A§;
   import §_-TX§.§_-0X§;
   import §case §.Sprite;
   import §case §.§_-Gm§;
   
   public class §_-PY§
   {
      
      public static const §_-fu§:String = "CutScene_Type_Intro";
      
      public static const §_-is§:String = "CutScene_Type_Outro";
      
      public static const §_-ql§:String = "CutScene_Type_Final_Outro";
       
      
      private var §_-BB§:§_-v8§;
      
      private var §_-8§:String;
      
      private var §_-in§:Vector.<§_-PQ§>;
      
      private var §_-zI§:Number;
      
      private var §_-1z§:Number;
      
      private var §_-LO§:Number;
      
      private var §_-Fy§:Number;
      
      private var §_-kv§:Sprite;
      
      private var §_-TW§:Boolean = true;
      
      private var §_-ZD§:uint;
      
      private var §_-pg§:Boolean;
      
      private var §_-9T§:§_-Gm§;
      
      private var §_-hv§:§_-Gm§;
      
      public function §_-PY§(param1:Object, param2:String)
      {
         var _loc3_:§_-PQ§ = null;
         var _loc4_:Object = null;
         this.§_-in§ = new Vector.<§_-PQ§>();
         super();
         this.§_-zI§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§_-8§ = §_-fu§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§_-8§ = §_-is§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§_-P6§(_loc4_);
               if(_loc3_)
               {
                  this.§_-in§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§_-in§)
            {
               if(_loc3_ is §_-DY§)
               {
                  (_loc3_ as §_-DY§).§_-tm§(this.§_-LO§,this.§_-Fy§);
                  (_loc3_ as §_-DY§).§_-WZ§ = this.§_-TW§;
               }
               else if(_loc3_ is §_-SQ§)
               {
                  (_loc3_ as §_-SQ§).§_-tm§(this.§_-LO§,this.§_-Fy§);
                  (_loc3_ as §_-SQ§).§_-do§ = this.§_-TW§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-kv§;
      }
      
      private function §_-P6§(param1:Object) : §_-PQ§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §_-PQ§.§_-Q7§:
               return new §_-SQ§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §_-PQ§.§_-Yy§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §_-DY§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §_-PQ§.§ get§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §_-sE§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §_-PQ§.§_-tp§:
               return new §_-Bo§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §_-PQ§.END:
               this.§_-1z§ = param1.time * 1000;
               break;
            case §_-PQ§.§_-lJ§:
               this.§_-LO§ = param1.width;
               this.§_-Fy§ = param1.height;
               break;
            case §_-PQ§.§_-8T§:
               this.§_-TW§ = false;
               break;
            case §_-PQ§.§_-Rl§:
               this.§_-TW§ = true;
               break;
            case §_-PQ§.§_-dH§:
               this.§_-ZD§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§_-kv§)
         {
            this.§_-kv§.dispose();
            this.§_-kv§ = null;
         }
         this.§_-in§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§_-kv§)
         {
            this.§_-kv§ = new Sprite();
         }
         this.§_-zI§ += param1;
         var _loc2_:int = this.§_-in§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§_-in§[_loc2_].update(this.§_-zI§,this.§_-kv§,this.§_-BB§))
            {
               this.§_-in§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§_-Ly§();
         this.§_-th§();
         this.§_-31§();
         return this.§_-zI§ < this.§_-1z§;
      }
      
      private function §_-31§() : void
      {
         var _loc1_:int = §_-0A§.§_-bz§.§_-Nw§.height;
         var _loc2_:Number = §_-0X§.§_-Al§;
         var _loc3_:Number = §_-0X§.§_-6-§;
         var _loc4_:int = (_loc1_ - this.§_-Fy§ * _loc2_) / _loc2_;
         this.§_-kv§.y = _loc4_ >> 1;
      }
      
      private function §_-Ly§() : void
      {
         §_-0A§.§_-bz§.color = this.§_-ZD§;
      }
      
      private function §_-th§() : void
      {
         if(this.§_-pg§)
         {
            return;
         }
         var _loc1_:Sprite = this.§_-kv§.getChildByName(§_-SQ§.§_-f9§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§_-pg§ = true;
      }
      
      public function clone(param1:§_-v8§) : §_-PY§
      {
         var _loc3_:§_-PQ§ = null;
         var _loc2_:§_-PY§ = new §_-PY§(null,null);
         for each(_loc3_ in this.§_-in§)
         {
            _loc2_.§_-in§.push(_loc3_.clone());
         }
         _loc2_.§_-zI§ = this.§_-zI§;
         _loc2_.§_-1z§ = this.§_-1z§;
         _loc2_.§_-LO§ = this.§_-LO§;
         _loc2_.§_-Fy§ = this.§_-Fy§;
         _loc2_.§_-TW§ = this.§_-TW§;
         _loc2_.§_-ZD§ = this.§_-ZD§;
         _loc2_.§_-8§ = this.§_-8§;
         _loc2_.§_-BB§ = param1;
         return _loc2_;
      }
      
      public function get §_-zh§() : String
      {
         return this.§_-8§;
      }
      
      public function set §_-zh§(param1:String) : void
      {
         this.§_-8§ = param1;
      }
   }
}
