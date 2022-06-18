package §4-§
{
   import §0u§.§&]§;
   import §0u§.§^S§;
   import §6!,§.§[H§;
   import §9H§.§@M§;
   import com.rovio.assets.§ 3§;
   import flash.display.*;
   
   public class §'J§ extends §^S§
   {
       
      
      public var §4_§:§[H§;
      
      public var §2J§:Vector.<§^S§>;
      
      public var §&!5§:Boolean = false;
      
      public function §'J§(param1:XML, param2:§'J§, param3:§[H§, param4:MovieClip = null)
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
            this.§4_§ = param3;
            if(!param4)
            {
               _loc12_ = § 3§.§+i§(mName);
               mClip = new _loc12_();
               this.§4_§.mMovieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§2J§ = new Vector.<§^S§>();
         for each(_loc5_ in param1.Container)
         {
            this.§2J§.push(new §'J§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§2J§.push(new §1U§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§2J§.push(new §%+§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§2J§.push(new §>Z§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§2J§.push(new §;g§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§2J§.push(new §-%§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§2J§.push(new §=%§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §?Y§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §?Y§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §?Y§(§-&§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §?Y§(§,n§,param1.@MouseOut);
         }
      }
      
      public function §4!3§(param1:§^S§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §?5§(param1:§^S§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §?v§(param1:§^S§) : void
      {
         if(this.§2J§.indexOf(param1) < 0)
         {
            this.§2J§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§`!C§);
            param1.setVisibility(this.§'N§ && param1.§'N§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §+X§(param1:§^S§) : void
      {
         var _loc2_:int = this.§2J§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§2J§.splice(_loc2_,1);
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
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§&]§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§4_§)
         {
            this.§4_§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§^S§ = null;
         for each(_loc2_ in this.§2J§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§2J§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§2J§.length)
            {
               this.§2J§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§2J§ = null;
         if(this.§4_§)
         {
            this.§4_§.mMovieClip.removeChild(mClip);
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
         var _loc2_:§^S§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§2J§ != null)
         {
            for each(_loc2_ in this.§2J§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §,b§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §^S§)
            {
               (_loc3_ as §^S§).setVisibility(param2);
            }
            else
            {
               §@M§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §^S§
      {
         var _loc2_:§^S§ = null;
         var _loc3_:§^S§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§2J§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §'J§)
            {
               _loc3_ = (_loc2_ as §'J§).getItemByName(param1);
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
      
      override public function getParentView() : §[H§
      {
         if(this.§4_§)
         {
            return this.§4_§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§^S§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§2J§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§^S§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§2J§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
