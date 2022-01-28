package §_-wG§
{
   import §_-3b§.§_-Og§;
   import §_-Ku§.§_-Ha§;
   import §_-SE§.Sprite;
   import §_-SE§.§_-uX§;
   import §_-pm§.§_-gb§;
   
   public class §_-G2§
   {
      
      public static const §_-0Y§:String = "CutScene_Type_Intro";
      
      public static const §_-ov§:String = "CutScene_Type_Outro";
      
      public static const §extends§:String = "CutScene_Type_Final_Outro";
       
      
      private var §_-wI§:§_-Og§;
      
      private var §_-xQ§:String;
      
      private var §_-Aw§:Vector.<include>;
      
      private var §_-OY§:Number;
      
      private var §_-Z1§:Number;
      
      private var §_-3Y§:Number;
      
      private var §_-cy§:Number;
      
      private var §_-j§:Sprite;
      
      private var §_-FP§:Boolean = true;
      
      private var §_-Ls§:uint;
      
      private var §_-mN§:Boolean;
      
      private var §_-kd§:§_-uX§;
      
      private var §_-8C§:§_-uX§;
      
      public function §_-G2§(param1:Object, param2:String)
      {
         var _loc3_:include = null;
         var _loc4_:Object = null;
         this.§_-Aw§ = new Vector.<include>();
         super();
         this.§_-OY§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§_-xQ§ = §_-0Y§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§_-xQ§ = §_-ov§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§_-YE§(_loc4_);
               if(_loc3_)
               {
                  this.§_-Aw§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§_-Aw§)
            {
               if(_loc3_ is §_-kP§)
               {
                  (_loc3_ as §_-kP§).§_-e5§(this.§_-3Y§,this.§_-cy§);
                  (_loc3_ as §_-kP§).§_-wB§ = this.§_-FP§;
               }
               else if(_loc3_ is §_-jH§)
               {
                  (_loc3_ as §_-jH§).§_-e5§(this.§_-3Y§,this.§_-cy§);
                  (_loc3_ as §_-jH§).§_-ip§ = this.§_-FP§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-j§;
      }
      
      private function §_-YE§(param1:Object) : include
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case include.§_-OB§:
               return new §_-jH§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case include.§_-xz§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §_-kP§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case include.§_-gz§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §_-io§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case include.§_-0K§:
               return new §_-FY§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case include.END:
               this.§_-Z1§ = param1.time * 1000;
               break;
            case include.§_-nH§:
               this.§_-3Y§ = param1.width;
               this.§_-cy§ = param1.height;
               break;
            case include.§_-ii§:
               this.§_-FP§ = false;
               break;
            case include.§_-Wc§:
               this.§_-FP§ = true;
               break;
            case include.§_-wZ§:
               this.§_-Ls§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§_-j§)
         {
            this.§_-j§.dispose();
            this.§_-j§ = null;
         }
         this.§_-Aw§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§_-j§)
         {
            this.§_-j§ = new Sprite();
         }
         this.§_-OY§ += param1;
         var _loc2_:int = this.§_-Aw§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§_-Aw§[_loc2_].update(this.§_-OY§,this.§_-j§,this.§_-wI§))
            {
               this.§_-Aw§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§_-Of§();
         this.§_-gm§();
         this.§_-TM§();
         return this.§_-OY§ < this.§_-Z1§;
      }
      
      private function §_-TM§() : void
      {
         var _loc1_:int = §_-Ha§.§_-Aq§.§_-lQ§.height;
         var _loc2_:Number = §_-gb§.§_-EZ§;
         var _loc3_:Number = §_-gb§.§_-Kx§;
         var _loc4_:int = (_loc1_ - this.§_-cy§ * _loc2_) / _loc2_;
         this.§_-j§.y = _loc4_ >> 1;
      }
      
      private function §_-Of§() : void
      {
         §_-Ha§.§_-Aq§.color = this.§_-Ls§;
      }
      
      private function §_-gm§() : void
      {
         if(this.§_-mN§)
         {
            return;
         }
         var _loc1_:Sprite = this.§_-j§.getChildByName(§_-jH§.§_-ah§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§_-mN§ = true;
      }
      
      public function clone(param1:§_-Og§) : §_-G2§
      {
         var _loc3_:include = null;
         var _loc2_:§_-G2§ = new §_-G2§(null,null);
         for each(_loc3_ in this.§_-Aw§)
         {
            _loc2_.§_-Aw§.push(_loc3_.clone());
         }
         _loc2_.§_-OY§ = this.§_-OY§;
         _loc2_.§_-Z1§ = this.§_-Z1§;
         _loc2_.§_-3Y§ = this.§_-3Y§;
         _loc2_.§_-cy§ = this.§_-cy§;
         _loc2_.§_-FP§ = this.§_-FP§;
         _loc2_.§_-Ls§ = this.§_-Ls§;
         _loc2_.§_-xQ§ = this.§_-xQ§;
         _loc2_.§_-wI§ = param1;
         return _loc2_;
      }
      
      public function get §_-AT§() : String
      {
         return this.§_-xQ§;
      }
      
      public function set §_-AT§(param1:String) : void
      {
         this.§_-xQ§ = param1;
      }
   }
}
