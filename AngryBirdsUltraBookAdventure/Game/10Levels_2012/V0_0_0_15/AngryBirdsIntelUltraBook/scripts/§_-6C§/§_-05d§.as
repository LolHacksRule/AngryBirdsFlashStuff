package §_-6C§
{
   import §_-0BH§.§_-FK§;
   import §_-MN§.§_-oi§;
   import §_-MN§.§_-rD§;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §_-05d§ extends §_-gt§
   {
      
      public static const §_-pd§:int = 0;
      
      public static const §_-01w§:int = 1;
      
      public static const §_-jO§:int = 2;
       
      
      public var §_-dt§:String;
      
      public var §_-oq§:Class;
      
      public var §_-R3§:String = null;
      
      public var §_-8-§:Vector.<§_-oi§>;
      
      public var §_-OR§:int;
      
      public var §_-V8§:Number;
      
      public var §_-PJ§:Number;
      
      public var §_-0Z§:Number;
      
      public var §_-hb§:Number;
      
      public var §_-04q§:Number;
      
      public var §_-WU§:Number;
      
      public var §_-W5§:Number;
      
      public var §_-hJ§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §_-06R§:int;
      
      public var §_-bC§:Number;
      
      public var §_-eR§:String = "";
      
      public var §_-Xj§:int;
      
      public var §_-UK§:int;
      
      public var §_-yS§:GlowFilter;
      
      public var §_-c5§:Boolean = true;
      
      public var §_-0DO§:int;
      
      public var §_-06l§:int;
      
      public var §_-0ED§:Number = 0;
      
      public var §_-AX§:Number = 0;
      
      public var §_-vL§:Number = 0;
      
      public var §_-066§:Number = 0;
      
      public var §_-nM§:Boolean = false;
      
      public var §_-7D§:Boolean = false;
      
      public var §_-d4§:MovieClip = null;
      
      public function §_-05d§(param1:XML, param2:§_-gt§, param3:§_-5q§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§_-dt§ = param1.@button;
         if(this.§_-dt§.length > 0)
         {
            this.§_-oq§ = §_-Fc§.§_-YE§(this.§_-dt§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§_-R3§ = _loc5_;
         }
         this.§_-Xj§ = §_-pd§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§_-Xj§ = §_-01w§;
            }
         }
         this.§_-UK§ = §_-jO§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§_-UK§ = §_-pd§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§_-yS§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §_-057§.push(new §_-Mu§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §_-057§.push(new §_-Mu§(_loc18_,this));
         }
         this.§_-V8§ = mClip.getChildByName("Surface").x;
         this.§_-PJ§ = mClip.getChildByName("Surface").y;
         this.§_-0Z§ = mClip.getChildByName("Surface").width;
         this.§_-hb§ = mClip.getChildByName("Surface").height;
         this.§_-04q§ = mClip.getChildByName("Button_Area1").x - this.§_-V8§;
         this.§_-WU§ = mClip.getChildByName("Button_Area1").y - this.§_-PJ§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§_-V8§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§_-PJ§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§_-bC§ = _loc9_.bottom - this.§_-PJ§ - this.§_-WU§;
         this.§_-W5§ = _loc7_ - this.§_-04q§;
         this.§_-hJ§ = _loc8_ - this.§_-WU§;
         if(Math.abs(this.§_-W5§) < 3)
         {
            this.§_-W5§ = 0;
         }
         if(Math.abs(this.§_-hJ§) < 3)
         {
            this.§_-hJ§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§_-W5§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§_-04q§ - this.§_-04q§) / this.§_-W5§;
         }
         if(this.§_-hJ§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§_-WU§ - this.§_-WU§) / this.§_-hJ§;
         }
         this.§_-OR§ = Math.min(_loc10_,_loc11_);
         this.§_-c5§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§_-0DO§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§_-0DO§ = this.§_-OR§;
         }
         this.§_-06R§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§_-V8§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§_-PJ§;
            this.mButtonMarginX2 = _loc19_ - this.§_-04q§;
            this.mButtonMarginY2 = _loc20_ - this.§_-WU§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§_-c5§)
            {
               this.§_-06R§ = 1 + (mClip.getChildByName("Surface").height - this.§_-WU§ - this.§_-WU§) / this.mButtonMarginY2;
            }
            else
            {
               this.§_-06R§ = 1 + (mClip.getChildByName("Surface").width - this.§_-04q§ - this.§_-04q§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§_-d4§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§_-vL§ = this.§_-d4§.x - mClip.getChildByName("Surface").x;
            this.§_-066§ = this.§_-d4§.y - mClip.getChildByName("Surface").y;
            this.§_-0ED§ = this.§_-d4§.x + this.§_-d4§.width - (this.§_-d4§.x + mClip.getChildByName("Surface").width);
            this.§_-AX§ = this.§_-d4§.y + this.§_-d4§.height - (this.§_-d4§.y + mClip.getChildByName("Surface").height);
            this.§_-nM§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§_-7D§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§_-06l§ = §_-oi§.§_-KR§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§_-06l§ = §_-oi§.§_-Il§;
            }
         }
         this.§_-OQ§();
      }
      
      public function §_-OQ§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§_-Ny§ = null;
         var _loc8_:§_-oi§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§_-Ev§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §_-Ev§;
         }
         this.§_-8-§ = new Vector.<§_-oi§>();
         this.§_-Ie§();
         if(param1 == null)
         {
            param1 = getParentView().getRepeaterDataXML(mName);
         }
         if(!param1)
         {
            param1 = new Array();
         }
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = mName + "_Tab_" + _loc3_;
            _loc5_ = new MovieClip();
            (_loc6_ = <Container/>).@name = _loc4_;
            _loc7_ = new §_-Ny§(_loc6_,this,null,_loc5_);
            §_-057§.push(_loc7_);
            _loc8_ = new §_-oi§(this.§_-06l§,_loc4_);
            this.§_-8-§.push(_loc8_);
            _loc9_ = this.§_-04q§;
            _loc10_ = this.§_-OR§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§_-UK§ == §_-pd§)
            {
               _loc9_ = (this.§_-0Z§ - (_loc10_ - 1) * this.§_-W5§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§_-057§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§_-057§.push(new param2(_loc12_,_loc7_,new this.§_-oq§() as MovieClip));
               }
               _loc13_ = _loc7_.§_-057§[_loc7_.§_-057§.length - 1] as §_-Ev§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§_-R3§);
                  if(this.§_-Xj§ == §_-01w§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§_-R3§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§_-06R§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§_-W5§;
                  _loc13_.y = this.§_-WU§ + _loc11_ * this.§_-hJ§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§_-OR§ * this.§_-06R§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§_-OR§ * this.§_-06R§) / this.§_-OR§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§_-OR§ * this.§_-06R§) % this.§_-OR§;
                  if(this.§_-c5§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§_-W5§ + _loc16_ * this.§_-OR§ * this.§_-W5§;
                     _loc13_.y = this.§_-WU§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§_-WU§ + _loc18_ * this.§_-hJ§ + _loc16_ * this.§_-OR§ * this.§_-hJ§;
                  }
               }
               _loc8_.§_-QY§(_loc13_);
               _loc11_++;
            }
            _loc8_.§_-0BT§("");
            _loc7_.§_-Ha§(this.§_-OR§,this.§_-V8§,this.§_-PJ§,this.§_-0DO§ * this.§_-W5§,this.§_-0DO§ * this.§_-hJ§,this.§_-06R§,this.§_-0DO§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §_-mZ§() : int
      {
         return this.§_-OR§;
      }
      
      public function get §_-hE§() : int
      {
         if(this.§_-mZ§ == 0)
         {
            return 0;
         }
         return this.§_-02B§(this.§_-eR§).§_-05b§.length / this.§_-mZ§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc5_:§_-oi§ = null;
         var _loc4_:§_-Ny§ = getItemByName(this.§_-eR§) as §_-Ny§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§_-1u§(_loc4_.§_-TW§ - 1);
               this.§_-Yz§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§_-1u§(_loc4_.§_-TW§ + 1);
               this.§_-Yz§();
            }
         }
         else if(param2.length > 0 && (param1 == §_-wU§.LISTENER_EVENT_MOUSE_DOWN || param1 == §_-wU§.LISTENER_EVENT_MOUSE_UP) && param3 is §_-rD§)
         {
            if((_loc5_ = this.§_-02B§((param3 as §_-rD§).mParentContainer.mName.toUpperCase())) && param3 is §_-Ev§)
            {
               _loc5_.§_-0BT§((param3 as §_-rD§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §_-7m§(param1:String, param2:int) : void
      {
         var _loc3_:§_-Ny§ = getItemByName(param1) as §_-Ny§;
         if(_loc3_)
         {
            _loc3_.§_-1u§(param2);
            this.§_-Yz§();
         }
      }
      
      public function §_-02B§(param1:String) : §_-oi§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-8-§.length)
         {
            if(param1.toUpperCase() == (this.§_-8-§[_loc2_] as §_-oi§).mName.toUpperCase())
            {
               return this.§_-8-§[_loc2_] as §_-oi§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-F8§(param1:String) : void
      {
         this.§_-eR§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §_-057§.length)
         {
            if(§_-057§[_loc2_] is §_-Ny§)
            {
               if((§_-057§[_loc2_] as §_-Ny§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§_-057§[_loc2_] as §_-Ny§).setActiveStatus(true);
                  if(this.§_-nM§)
                  {
                     this.§_-d4§.x = (§_-057§[_loc2_] as §_-Ny§).x + this.§_-vL§;
                     this.§_-d4§.width = (§_-057§[_loc2_] as §_-Ny§).width + this.§_-0ED§;
                  }
                  if(this.§_-7D§)
                  {
                     this.§_-d4§.y = (§_-057§[_loc2_] as §_-Ny§).y + this.§_-066§;
                     this.§_-d4§.height = (§_-057§[_loc2_] as §_-Ny§).height + this.§_-AX§;
                  }
               }
               else
               {
                  (§_-057§[_loc2_] as §_-Ny§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§_-Yz§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§_-oi§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§_-8-§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §_-Yz§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§_-Ny§ = getItemByName(this.§_-eR§) as §_-Ny§;
         if(_loc1_)
         {
            if(_loc1_.§_-TW§ > 0)
            {
               (getItemByName("Button_Scroll1") as §_-Mu§).setComponentState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §_-Mu§).setComponentState(§_-rR§.§_-K1§);
            }
            if(_loc1_.§_-TW§ < _loc1_.§_-ep§ - 1)
            {
               (getItemByName("Button_Scroll2") as §_-Mu§).setComponentState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §_-Mu§).setComponentState(§_-rR§.§_-K1§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §_-Mu§).setComponentState(§_-rR§.§_-K1§);
            (getItemByName("Button_Scroll2") as §_-Mu§).setComponentState(§_-rR§.§_-K1§);
         }
      }
      
      public function §_-Ie§() : void
      {
         var _loc2_:§_-Ny§ = null;
         var _loc1_:int = §_-057§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §_-057§[_loc1_] as §_-Ny§;
            if(_loc2_)
            {
               _loc2_.clear();
               §_-057§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§_-F8§("");
      }
      
      public function §_-02w§() : void
      {
         var _loc1_:§_-oi§ = null;
         for each(_loc1_ in this.§_-8-§)
         {
            _loc1_.§_-02w§();
         }
      }
      
      public function §_-0-z§() : Array
      {
         if(this.§_-02B§(this.§_-eR§) == null)
         {
            §_-FK§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§_-02B§(this.§_-eR§).§_-Wr§();
      }
      
      public function §_-6v§(param1:Array) : void
      {
         this.§_-02B§(this.§_-eR§).§_-6v§(param1);
      }
      
      public function §_-E1§(param1:Number) : void
      {
         this.§_-02B§(this.§_-eR§).§_-E1§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-oq§ = null;
         this.§_-8-§ = null;
         this.§_-yS§ = null;
      }
   }
}
