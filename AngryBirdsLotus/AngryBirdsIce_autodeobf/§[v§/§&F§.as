package §[v§
{
   import §2]§.§#H§;
   import §;8§.§3f§;
   import §`W§.§-[§;
   import §`W§.§`H§;
   import com.rovio.assets.§>D§;
   import flash.display.*;
   
   public class §&F§ extends §`H§
   {
       
      
      public var §=o§:§#H§;
      
      public var §1I§:Vector.<§`H§>;
      
      public var §3!A§:Boolean = false;
      
      public function §&F§(param1:XML, param2:§&F§, param3:§#H§, param4:MovieClip = null)
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
            this.§=o§ = param3;
            if(!param4)
            {
               _loc12_ = §>D§.§`C§(mName);
               mClip = new _loc12_();
               this.§=o§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§1I§ = new Vector.<§`H§>();
         for each(_loc5_ in param1.Container)
         {
            this.§1I§.push(new §&F§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§1I§.push(new §?H§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§1I§.push(new §^P§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§1I§.push(new §'4§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§1I§.push(new §=!=§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§1I§.push(new §+B§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§1I§.push(new § %§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §`!E§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §`!E§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §`!E§(§&!<§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §`!E§(§@K§,param1.@MouseOut);
         }
      }
      
      public function §#!E§(param1:§`H§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §''§(param1:§`H§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §&!?§(param1:§`H§) : void
      {
         if(this.§1I§.indexOf(param1) < 0)
         {
            this.§1I§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§^[§);
            param1.setVisibility(this.§^!@§ && param1.§^!@§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §[4§(param1:§`H§) : void
      {
         var _loc2_:int = this.§1I§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§1I§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§-[§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§=o§)
         {
            this.§=o§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§`H§ = null;
         for each(_loc2_ in this.§1I§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§1I§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§1I§.length)
            {
               this.§1I§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§1I§ = null;
         if(this.§=o§)
         {
            this.§=o§.movieClip.removeChild(mClip);
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
         var _loc2_:§`H§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§1I§ != null)
         {
            for each(_loc2_ in this.§1I§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §=W§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §`H§)
            {
               (_loc3_ as §`H§).setVisibility(param2);
            }
            else
            {
               §3f§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §`H§
      {
         var _loc2_:§`H§ = null;
         var _loc3_:§`H§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§1I§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §&F§)
            {
               _loc3_ = (_loc2_ as §&F§).getItemByName(param1);
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
      
      override public function getParentView() : §#H§
      {
         if(this.§=o§)
         {
            return this.§=o§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§`H§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§1I§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§`H§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§1I§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
