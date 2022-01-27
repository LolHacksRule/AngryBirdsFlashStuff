package §!i§
{
   import §""<§.§#N§;
   import §+w§.§,!@§;
   import §4!t§.§95§;
   import §4!t§.§>r§;
   import §4!t§.§?i§;
   import §<!#§.§""§;
   import com.rovio.assets.§2!3§;
   import flash.display.*;
   import flash.events.Event;
   
   public class §1s§ extends §>r§
   {
       
      
      public var §^!z§:§,!@§;
      
      public var §="§:Vector.<§?i§>;
      
      public var §1"A§:Boolean = false;
      
      public function §1s§(param1:XML, param2:§1s§, param3:§,!@§, param4:MovieClip = null)
      {
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         var _loc8_:XML = null;
         var _loc9_:XML = null;
         var _loc10_:XML = null;
         var _loc11_:XML = null;
         var _loc12_:Class = null;
         this.mName = param1.@name;
         if(param3)
         {
            this.§^!z§ = param3;
            if(!param4)
            {
               _loc12_ = §2!3§.dynamic(mName);
               mClip = new _loc12_();
               this.§^!z§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§="§ = new Vector.<§?i§>();
         for each(_loc5_ in param1.Container)
         {
            this.§="§.push(new §1s§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§="§.push(new §1W§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§="§.push(new §3!A§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§="§.push(new §?"%§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§="§.push(new §^!d§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§="§.push(new §9!b§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§="§.push(new §8W§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §^7§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §^7§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §^7§(§!!M§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §^7§(§1>§,param1.@MouseOut);
         }
      }
      
      public function §]!A§(param1:§?i§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§?i§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §6!3§(param1:§?i§) : void
      {
         if(this.§="§.indexOf(param1) < 0)
         {
            this.§="§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§6!g§);
            param1.setVisibility(this.§1"G§ && param1.§1"G§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §!!9§(param1:§?i§) : void
      {
         var _loc2_:int = this.§="§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§="§.splice(_loc2_,1);
            mClip.removeChild(param1.mClip);
         }
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         if(!mClip)
         {
            return;
         }
         var _loc2_:String = param1.@visible;
         if(_loc2_ && _loc2_.toUpperCase() == "FALSE")
         {
            this.setVisibility(false);
         }
         else
         {
            this.setVisibility(true);
         }
         _loc2_ = param1.@enabled;
         if(_loc2_ && _loc2_.toUpperCase() == "TRUE")
         {
            this.setEnabled(true);
         }
         else
         {
            this.setEnabled(false);
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §""§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function childUIEventOccured(param1:int, param2:String, param3:§95§, param4:Event = null) : void
      {
         if(param4)
         {
            dispatchEvent(param4);
         }
         if(mParentContainer)
         {
            mParentContainer.childUIEventOccured(param1,param2,param3,param4);
         }
         else if(this.§^!z§)
         {
            this.§^!z§.listenerUIEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§?i§ = null;
         for each(_loc2_ in this.§="§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§="§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§="§.length)
            {
               this.§="§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§="§ = null;
         if(this.§^!z§)
         {
            this.§^!z§.movieClip.removeChild(mClip);
         }
         super.clear();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         this.onParentVisibilityChange(param1);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:§?i§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§="§ != null)
         {
            for each(_loc2_ in this.§="§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §"w§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §?i§)
            {
               (_loc3_ as §?i§).setVisibility(param2);
            }
            else
            {
               §#N§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §?i§
      {
         var _loc2_:§?i§ = null;
         var _loc3_:§?i§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§="§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §1s§)
            {
               _loc3_ = (_loc2_ as §1s§).getItemByName(param1);
               if(_loc3_ != null)
               {
                  return _loc3_;
               }
            }
         }
         return null;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         mClip.mouseEnabled = param1;
      }
      
      override public function getParentView() : §,!@§
      {
         if(this.§^!z§)
         {
            return this.§^!z§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§?i§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§="§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§?i§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§="§)
         {
            _loc2_.viewHeight = param1;
         }
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §?"%§)
         {
            (_loc3_ as §?"%§).setText(param1);
            return;
         }
         throw "--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio";
      }
   }
}
