package §_-Eg§
{
   import §_-16§.§_-8n§;
   import §_-16§.§_-9-§;
   import §_-16§.§_-MF§;
   import §_-16§.§_-VR§;
   import §_-2B§.§_-wA§;
   import §_-r6§.§_-Oy§;
   import §_-xL§.§_-1-§;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §_-y2§ extends §_-Up§
   {
      
      public static const §_-C4§:int = 0;
      
      public static const §_-wP§:int = 1;
      
      public static const §_-ck§:int = 2;
       
      
      public var §_-Ld§:String;
      
      public var §_-0R§:Class;
      
      public var §_-Cq§:String = null;
      
      public var §_-VL§:Array;
      
      public var §_-NW§:int;
      
      public var §_-z7§:Number;
      
      public var include:Number;
      
      public var §_-ZG§:Number;
      
      public var §_-0L§:Number;
      
      public var §_-ko§:Number;
      
      public var §_-P§:Number;
      
      public var §_-r§:Number;
      
      public var §_-g7§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §_-73§:int;
      
      public var §_-UJ§:Number;
      
      public var §_-2i§:String = "";
      
      public var §_-du§:int;
      
      public var §_-El§:int;
      
      public var § null§:GlowFilter;
      
      public var §_-FW§:Boolean = true;
      
      public var §_-hl§:int;
      
      public var §_-Jt§:int;
      
      public var §_-Xu§:Number = 0;
      
      public var §_-G2§:Number = 0;
      
      public var §_-2w§:Number = 0;
      
      public var §_-vr§:Number = 0;
      
      public var §_-LV§:Boolean = false;
      
      public var §_-JP§:Boolean = false;
      
      public var §_-8I§:MovieClip = null;
      
      public function §_-y2§(param1:XML, param2:§_-Up§, param3:§_-1-§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§_-Ld§ = param1.@button;
         if(this.§_-Ld§.length > 0)
         {
            this.§_-0R§ = §_-wA§.§_-Mh§(this.§_-Ld§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§_-Cq§ = _loc5_;
         }
         this.§_-du§ = §_-C4§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§_-du§ = §_-wP§;
            }
         }
         this.§_-El§ = §_-ck§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§_-El§ = §_-C4§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§ null§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §_-3P§[§_-3P§.length] = new §_-hf§(_loc17_,this);
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §_-3P§[§_-3P§.length] = new §_-hf§(_loc18_,this);
         }
         this.§_-z7§ = mClip.getChildByName("Surface").x;
         this.include = mClip.getChildByName("Surface").y;
         this.§_-ZG§ = mClip.getChildByName("Surface").width;
         this.§_-0L§ = mClip.getChildByName("Surface").height;
         this.§_-ko§ = mClip.getChildByName("Button_Area1").x - this.§_-z7§;
         this.§_-P§ = mClip.getChildByName("Button_Area1").y - this.include;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§_-z7§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.include;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§_-UJ§ = _loc9_.bottom - this.include - this.§_-P§;
         this.§_-r§ = _loc7_ - this.§_-ko§;
         this.§_-g7§ = _loc8_ - this.§_-P§;
         if(Math.abs(this.§_-r§) < 3)
         {
            this.§_-r§ = 0;
         }
         if(Math.abs(this.§_-g7§) < 3)
         {
            this.§_-g7§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§_-r§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§_-ko§ - this.§_-ko§) / this.§_-r§;
         }
         if(this.§_-g7§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§_-P§ - this.§_-P§) / this.§_-g7§;
         }
         this.§_-NW§ = Math.min(_loc10_,_loc11_);
         this.§_-FW§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§_-hl§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§_-hl§ = this.§_-NW§;
         }
         this.§_-73§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§_-z7§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.include;
            this.mButtonMarginX2 = _loc19_ - this.§_-ko§;
            this.mButtonMarginY2 = _loc20_ - this.§_-P§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§_-FW§)
            {
               this.§_-73§ = 1 + (mClip.getChildByName("Surface").height - this.§_-P§ - this.§_-P§) / this.mButtonMarginY2;
            }
            else
            {
               this.§_-73§ = 1 + (mClip.getChildByName("Surface").width - this.§_-ko§ - this.§_-ko§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§_-8I§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§_-2w§ = this.§_-8I§.x - mClip.getChildByName("Surface").x;
            this.§_-vr§ = this.§_-8I§.y - mClip.getChildByName("Surface").y;
            this.§_-Xu§ = this.§_-8I§.x + this.§_-8I§.width - (this.§_-8I§.x + mClip.getChildByName("Surface").width);
            this.§_-G2§ = this.§_-8I§.y + this.§_-8I§.height - (this.§_-8I§.y + mClip.getChildByName("Surface").height);
            this.§_-LV§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§_-JP§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§_-Jt§ = §_-9-§.§_-lO§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§_-Jt§ = §_-9-§.§_-0-D§;
            }
         }
         this.§_-V3§();
      }
      
      public function §_-V3§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§_-Tb§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:XML = null;
         var _loc12_:§_-wO§ = null;
         var _loc13_:MovieClip = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         if(param2 == null)
         {
            param2 = §_-wO§;
         }
         this.§_-VL§ = new Array();
         this.§_-tV§();
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
            §_-3P§[§_-3P§.length] = new §_-Tb§(_loc6_,this,null,_loc5_);
            _loc7_ = §_-3P§[§_-3P§.length - 1];
            this.§_-VL§[this.§_-VL§.length] = new §_-9-§(this.§_-Jt§,_loc4_);
            _loc8_ = this.§_-ko§;
            _loc9_ = this.§_-NW§;
            if((param1[_loc3_] as Array).length < _loc9_)
            {
               _loc9_ = (param1[_loc3_] as Array).length;
            }
            if(this.§_-El§ == §_-C4§)
            {
               _loc8_ = (this.§_-ZG§ - (_loc9_ - 1) * this.§_-r§) / 2;
            }
            _loc10_ = 0;
            while(_loc10_ < (param1[_loc3_] as Array).length)
            {
               _loc11_ = ((param1[_loc3_] as Array)[_loc10_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc10_] as Array)[2])
               {
                  _loc7_.§_-3P§[_loc7_.§_-3P§.length] = new param2(_loc11_,_loc7_,((param1[_loc3_] as Array)[_loc10_] as Array)[2] as MovieClip);
               }
               else
               {
                  _loc7_.§_-3P§[_loc7_.§_-3P§.length] = new param2(_loc11_,_loc7_,new this.§_-0R§() as MovieClip);
               }
               _loc12_ = _loc7_.§_-3P§[_loc7_.§_-3P§.length - 1];
               if(((param1[_loc3_] as Array)[_loc10_] as Array)[1] != null)
               {
                  _loc13_ = ((param1[_loc3_] as Array)[_loc10_] as Array)[1] as MovieClip;
                  _loc12_.§_-7r§(_loc13_,this.§_-Cq§);
                  if(this.§_-du§ == §_-wP§)
                  {
                     _loc14_ = 2;
                     _loc13_.y -= _loc13_.height / 2;
                     if(this.§_-Cq§ == null)
                     {
                        _loc13_.y -= _loc14_;
                     }
                  }
               }
               if(this.§_-73§ == 1)
               {
                  _loc12_.x = _loc8_ + _loc10_ * this.§_-r§;
                  _loc12_.y = this.§_-P§ + _loc10_ * this.§_-g7§;
               }
               else
               {
                  _loc15_ = _loc10_ / (this.§_-NW§ * this.§_-73§);
                  _loc16_ = (_loc10_ - _loc15_ * this.§_-NW§ * this.§_-73§) / this.§_-NW§;
                  _loc17_ = (_loc10_ - _loc15_ * this.§_-NW§ * this.§_-73§) % this.§_-NW§;
                  if(this.§_-FW§)
                  {
                     _loc12_.x = _loc8_ + _loc17_ * this.§_-r§ + _loc15_ * this.§_-NW§ * this.§_-r§;
                     _loc12_.y = this.§_-P§ + _loc16_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc12_.x = _loc8_ + _loc16_ * this.mButtonMarginX2;
                     _loc12_.y = this.§_-P§ + _loc17_ * this.§_-g7§ + _loc15_ * this.§_-NW§ * this.§_-g7§;
                  }
               }
               (this.§_-VL§[this.§_-VL§.length - 1] as §_-9-§).§_-V2§(_loc12_);
               _loc10_++;
            }
            (this.§_-VL§[this.§_-VL§.length - 1] as §_-9-§).§_-Sn§("");
            _loc7_.§_-Ft§(this.§_-NW§,this.§_-z7§,this.include,this.§_-hl§ * this.§_-r§,this.§_-hl§ * this.§_-g7§,this.§_-73§,this.§_-hl§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §_-qr§() : int
      {
         return this.§_-NW§;
      }
      
      public function get §_-ju§() : int
      {
         if(this.§_-qr§ == 0)
         {
            return 0;
         }
         return this.§_-3f§(this.§_-2i§).§_-QH§.length / this.§_-qr§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§_-VR§) : void
      {
         var _loc5_:§_-9-§ = null;
         var _loc4_:§_-Tb§ = getItemByName(this.§_-2i§) as §_-Tb§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§_-GN§(_loc4_.§_-XW§ - 1);
               this.§_-iO§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§_-GN§(_loc4_.§_-XW§ + 1);
               this.§_-iO§();
            }
         }
         else if(param2.length > 0 && (param1 == §_-VR§.LISTENER_EVENT_MOUSE_DOWN || param1 == §_-VR§.LISTENER_EVENT_MOUSE_UP) && param3 is §_-MF§)
         {
            if((_loc5_ = this.§_-3f§((param3 as §_-MF§).mParentContainer.mName.toUpperCase())) && param3 is §_-wO§)
            {
               _loc5_.§_-Sn§((param3 as §_-MF§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §_-Cd§(param1:String, param2:int) : void
      {
         var _loc3_:§_-Tb§ = getItemByName(param1) as §_-Tb§;
         if(_loc3_)
         {
            _loc3_.§_-GN§(param2);
            this.§_-iO§();
         }
      }
      
      public function §_-3f§(param1:String) : §_-9-§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-VL§.length)
         {
            if(param1.toUpperCase() == (this.§_-VL§[_loc2_] as §_-9-§).mName.toUpperCase())
            {
               return this.§_-VL§[_loc2_] as §_-9-§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-aj§(param1:String) : void
      {
         this.§_-2i§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §_-3P§.length)
         {
            if(§_-3P§[_loc2_] is §_-Tb§)
            {
               if((§_-3P§[_loc2_] as §_-Tb§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§_-3P§[_loc2_] as §_-Tb§).setActiveStatus(true);
                  if(this.§_-LV§)
                  {
                     this.§_-8I§.x = (§_-3P§[_loc2_] as §_-Tb§).x + this.§_-2w§;
                     this.§_-8I§.width = (§_-3P§[_loc2_] as §_-Tb§).width + this.§_-Xu§;
                  }
                  if(this.§_-JP§)
                  {
                     this.§_-8I§.y = (§_-3P§[_loc2_] as §_-Tb§).y + this.§_-vr§;
                     this.§_-8I§.height = (§_-3P§[_loc2_] as §_-Tb§).height + this.§_-G2§;
                  }
               }
               else
               {
                  (§_-3P§[_loc2_] as §_-Tb§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§_-iO§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§_-9-§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§_-VL§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §_-iO§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§_-Tb§ = getItemByName(this.§_-2i§) as §_-Tb§;
         if(_loc1_)
         {
            if(_loc1_.§_-XW§ > 0)
            {
               (getItemByName("Button_Scroll1") as §_-hf§).setComponentState(§_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §_-hf§).setComponentState(§_-8n§.§_-uX§);
            }
            if(_loc1_.§_-XW§ < _loc1_.§_-Fw§ - 1)
            {
               (getItemByName("Button_Scroll2") as §_-hf§).setComponentState(§_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §_-hf§).setComponentState(§_-8n§.§_-uX§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §_-hf§).setComponentState(§_-8n§.§_-uX§);
            (getItemByName("Button_Scroll2") as §_-hf§).setComponentState(§_-8n§.§_-uX§);
         }
      }
      
      public function §_-tV§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §_-3P§.length)
         {
            if(§_-3P§[_loc1_] is §_-Tb§)
            {
               (§_-3P§[_loc1_] as §_-Tb§).clear();
               §_-3P§.splice(_loc1_,1);
               _loc1_--;
            }
            _loc1_++;
         }
         this.§_-aj§("");
      }
      
      public function §_-BT§() : void
      {
         var _loc1_:§_-9-§ = null;
         for each(_loc1_ in this.§_-VL§)
         {
            _loc1_.§_-BT§();
         }
      }
      
      public function §_-aG§() : Array
      {
         if(this.§_-3f§(this.§_-2i§) == null)
         {
            §_-Oy§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§_-3f§(this.§_-2i§).§_-mV§();
      }
      
      public function §_-7P§(param1:Array) : void
      {
         this.§_-3f§(this.§_-2i§).§_-7P§(param1);
      }
      
      public function §_-89§(param1:Number) : void
      {
         this.§_-3f§(this.§_-2i§).§_-89§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-0R§ = null;
         this.§_-VL§ = null;
         this.§ null§ = null;
      }
   }
}
