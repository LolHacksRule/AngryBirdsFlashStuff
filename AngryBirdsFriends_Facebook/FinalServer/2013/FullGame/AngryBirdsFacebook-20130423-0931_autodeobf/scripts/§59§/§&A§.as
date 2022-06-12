package §59§
{
   import §,l§.§#!,§;
   import §9@§.§3,§;
   import §9@§.§`!=§;
   import §=!@§.§=!N§;
   import §@!%§.§#!$§;
   import §^"F§.§4!2§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class §&A§ extends EventDispatcher
   {
       
      
      private var § !j§:String;
      
      private var §>"#§:§="C§;
      
      private var §0"7§:String;
      
      private var §>"4§:MovieClip;
      
      protected var §0!g§:MovieClip;
      
      private var §[y§:Array;
      
      private var §5f§:String;
      
      private var §=!?§:int;
      
      public function §&A§(param1:§="C§, param2:String, param3:String, param4:MovieClip, param5:String, param6:int = 5)
      {
         super();
         this.§>"#§ = param1;
         this.§ !j§ = param2;
         this.§0"7§ = param3;
         this.§0!g§ = param4;
         this.§5f§ = param5;
         this.§=!?§ = param6;
         this.§2C§();
      }
      
      private function §7!2§(param1:MouseEvent) : void
      {
         this.§^!-§.easterEgg1Button.visible = false;
         (AngryBirdsFP11.sUserProgress as §#!$§).§9!'§("1000-1");
      }
      
      private function §^"#§() : void
      {
         if(!(AngryBirdsFP11.sUserProgress as §#!$§).§,"F§("1000-1"))
         {
            this.§^!-§.easterEgg1Button.visible = true;
            this.§^!-§.easterEgg1Button.addEventListener(MouseEvent.CLICK,this.§7!2§);
         }
         else
         {
            this.§^!-§.easterEgg1Button.visible = false;
         }
      }
      
      protected function §2C§() : void
      {
         if(this.§;"R§.id == §4!2§.§4"X§)
         {
            this.§^"#§();
         }
         this.§?!a§();
         this.§`!Z§();
         this.§4"5§();
         this.§!9§();
         this.§^!-§.description.text = this.§5f§;
         this.§35§();
      }
      
      protected function §4"5§() : void
      {
         this.§0!g§.iconContainer.addChild(this.icon);
         this.§0!g§.buttonMode = true;
         this.§0!g§.mouseChildren = false;
      }
      
      protected function §35§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:TextField = null;
         var _loc4_:TextField = null;
         var _loc5_:TextField = null;
         var _loc6_:MovieClip = null;
         var _loc7_:SimpleButton = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         this.§[y§ = [];
         var _loc1_:int = 0;
         while(_loc1_ < this.§=!?§)
         {
            _loc2_ = _loc1_ + 1;
            _loc3_ = this.§^!-§["price" + _loc2_];
            _loc4_ = this.§^!-§["amount" + _loc2_];
            _loc5_ = this.§^!-§["free" + _loc2_];
            _loc6_ = this.§^!-§["icon" + _loc2_];
            _loc3_.text = "x " + §3,§.§3!Y§(this.§>"#§.getPricePoint(_loc1_).price);
            _loc4_.text = "x " + §3,§.§3!Y§(this.§>"#§.getPricePoint(_loc1_).§ !?§);
            if(_loc5_)
            {
               _loc5_.mouseEnabled = false;
               _loc8_ = "+";
               _loc9_ = " free!";
               if(this.§>"#§.getPricePoint(_loc1_).§4!m§ > 0)
               {
                  _loc5_.text = _loc8_ + this.§>"#§.getPricePoint(_loc1_).§#!-§() + _loc9_;
               }
               else
               {
                  _loc5_.text = "";
               }
            }
            _loc3_.mouseEnabled = _loc4_.mouseEnabled = _loc6_.mouseEnabled = false;
            _loc6_.mouseChildren = false;
            (_loc7_ = this.§^!-§["buy" + _loc2_]).addEventListener(MouseEvent.CLICK,this.§9!C§);
            this.§[y§.push(_loc7_);
            _loc1_++;
         }
      }
      
      private function §9!C§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc4_:SimpleButton = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         for each(_loc4_ in this.§[y§)
         {
            if(_loc4_ == param1.currentTarget)
            {
               _loc2_ = _loc3_;
               break;
            }
            _loc3_++;
         }
         _loc5_ = _loc4_.parent.x + _loc4_.x + param1.localX;
         _loc6_ = _loc4_.parent.y + _loc4_.y + param1.localY;
         dispatchEvent(new §=!N§(§=!N§.§[",§,false,false,this.§>"#§,this.§>"#§.getPricePoint(_loc2_),new Point(_loc5_,_loc6_)));
      }
      
      public function §!9§() : void
      {
         var _loc1_:int = §#!,§.§&"5§.§]![§(this.§;"R§.id);
         this.§0!g§.tagForNumberOfPowerups.visible = _loc1_ > 0;
         this.§0!g§.tagForNumberOfPowerups.numberOfPowerups.text = §`!=§.§;"D§(_loc1_);
      }
      
      protected function §?!a§() : void
      {
         this.§0!g§.addEventListener(MouseEvent.CLICK,this.§[!o§);
         this.§0!g§.addEventListener(MouseEvent.ROLL_OVER,this.§`!W§);
         this.§0!g§.addEventListener(MouseEvent.ROLL_OUT,this.§`!Z§);
      }
      
      protected function §!![§() : void
      {
         this.§0!g§.removeEventListener(MouseEvent.CLICK,this.§[!o§);
         this.§0!g§.removeEventListener(MouseEvent.ROLL_OVER,this.§`!W§);
         this.§0!g§.removeEventListener(MouseEvent.ROLL_OUT,this.§`!Z§);
      }
      
      protected function §[!o§(param1:MouseEvent) : void
      {
         dispatchEvent(new §=!N§(§=!N§.§9o§));
      }
      
      protected function §`!W§(param1:MouseEvent) : void
      {
         this.§0!g§.gotoAndStop("MouseOver");
      }
      
      protected function §`!Z§(param1:MouseEvent = null) : void
      {
         this.§0!g§.gotoAndStop("Normal");
      }
      
      public function §^+§() : void
      {
         this.§0!g§.gotoAndStop("Normal");
         this.§?!a§();
      }
      
      public function §<]§() : void
      {
         this.§0!g§.gotoAndStop("Selected");
         this.§!![§();
      }
      
      public function get §;"R§() : §="C§
      {
         return this.§>"#§;
      }
      
      public function get §^!-§() : MovieClip
      {
         if(this.§>"4§)
         {
            return this.§>"4§;
         }
         var _loc1_:Class = §?q§.§ q§(this.§0"7§);
         this.§>"4§ = new _loc1_();
         return this.§>"4§;
      }
      
      private function get icon() : MovieClip
      {
         var _loc1_:Class = §?q§.§ q§(this.§ !j§);
         return new _loc1_();
      }
   }
}
