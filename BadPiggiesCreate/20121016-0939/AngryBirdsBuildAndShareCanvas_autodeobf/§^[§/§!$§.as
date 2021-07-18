package §^[§
{
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'p§.§`!T§;
   import §62§.§0!t§;
   import com.rovio.assets.§>!]§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §!$§ extends Sprite
   {
      
      private static const §=_§:int = 20;
       
      
      private var §7!N§:Sprite;
      
      private var §;#§:Sprite;
      
      private var §#"!§:Boolean = false;
      
      private var §&T§:§[@§;
      
      private var §@J§:int;
      
      private var §0"9§:int;
      
      private var §`T§:Number;
      
      private var §9!c§:Boolean = false;
      
      private var §-N§:Boolean = false;
      
      private var §6!a§:Number = 1;
      
      private var §8!g§:§3^§;
      
      private var §[h§:MovieClip;
      
      private var §-%§:DisplayObject;
      
      private var §0!s§:TextField;
      
      private var §!F§:String;
      
      private var §#!E§:int;
      
      public function §!$§(param1:String, param2:§`!T§, param3:DisplayObject, param4:Boolean = false, param5:Number = 1, param6:int = 2147483647)
      {
         this.§&T§ = new §[@§();
         super();
         this.§`T§ = param5;
         this.§;#§ = new Sprite();
         this.§;#§.addChild(param3);
         this.§!F§ = param1;
         param3.x = -param3.width / 2;
         param3.y = -param3.height / 2;
         this.§[h§ = new MovieClip();
         this.§7!N§ = new Sprite();
         this.§[h§.addChild(this.§;#§);
         this.§[h§.addChild(this.§7!N§);
         this.§@J§ = this.§;#§.width;
         this.§0"9§ = this.§;#§.height;
         visible = true;
         this.§#!E§ = param6;
         this.§[h§.buttonMode = true;
         this.§[h§.useHandCursor = true;
         this.§[h§.addEventListener(MouseEvent.ROLL_OVER,this.§&k§);
         this.§[h§.addEventListener(MouseEvent.ROLL_OUT,this.§`F§);
         this.§[h§.addEventListener(Event.MOUSE_LEAVE,this.§`F§);
         addChild(this.§[h§);
         param2.mClip.addChild(this);
      }
      
      private function §`F§(param1:MouseEvent) : void
      {
         if(this.§8!g§ != null)
         {
            this.§8!g§.stop();
         }
         var _loc2_:Number = this.§6!a§ * this.§`T§;
         this.§8!g§ = §7!E§.§2=§.§<!C§(this.§;#§,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },null,0.05);
         this.§8!g§.play();
         if(!this.§#"!§)
         {
            this.§9!%§();
         }
      }
      
      private function §&k§(param1:MouseEvent) : void
      {
         if(this.§8!g§ != null)
         {
            this.§8!g§.stop();
         }
         var _loc2_:Number = 1;
         if(this.§6!a§ * this.§`T§ == 1)
         {
            _loc2_ += 0.05;
         }
         this.§8!g§ = §7!E§.§2=§.§<!C§(this.§;#§,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },null,0.05);
         this.§8!g§.play();
         parent.setChildIndex(this,parent.numChildren - 1);
         this.§;">§();
      }
      
      public function §4Y§() : void
      {
         this.§#"!§ = true;
         this.§;">§();
         dispatchEvent(new §0!t§(§0!t§.§]!x§));
      }
      
      private function §;">§() : void
      {
         this.§&T§.§"!,§(this.§;#§.parent);
      }
      
      public function §9!%§() : void
      {
         this.§#"!§ = false;
         this.§&T§.§0k§(this.§;#§.parent);
      }
      
      public function getItemName() : String
      {
         return this.§!F§;
      }
      
      public function §8!n§() : Bitmap
      {
         return this.§;#§.getChildAt(0) as Bitmap;
      }
      
      public function §>!K§() : BitmapData
      {
         var _loc1_:Array = this.§;#§.filters;
         this.§;#§.filters = [];
         var _loc2_:BitmapData = new BitmapData(this.§;#§.width / this.§;#§.scaleX,this.§;#§.height / this.§;#§.scaleY,true,0);
         _loc2_.draw(this.§;#§);
         this.§;#§.filters = _loc1_;
         return _loc2_;
      }
      
      public function setSize(param1:int, param2:int) : void
      {
         this.§7!N§.graphics.clear();
         this.§7!N§.graphics.beginFill(16711680,0);
         this.§7!N§.graphics.drawRect(0,0,param1,param2);
         this.§7!N§.graphics.endFill();
         this.§;#§.x = this.§7!N§.width / 2;
         this.§;#§.y = this.§7!N§.height / 2;
      }
      
      public function §&"4§(param1:Number) : void
      {
         this.§6!a§ = param1;
         this.§;#§.scaleX = this.§6!a§ * this.§`T§;
         this.§;#§.scaleY = this.§6!a§ * this.§`T§;
      }
      
      public function §@!F§() : int
      {
         return this.§;#§.width;
      }
      
      public function §9D§() : int
      {
         return this.§;#§.height;
      }
      
      public function get §?5§() : int
      {
         return this.§@J§ * this.§`T§;
      }
      
      public function get §=""§() : int
      {
         return this.§0"9§ * this.§`T§;
      }
      
      public function lock() : void
      {
         if(this.§7!w§)
         {
            return;
         }
         if(this.§-%§ && this.§-%§.parent)
         {
            this.§-%§.parent.removeChild(this.§-%§);
         }
         this.§[h§.removeEventListener(MouseEvent.ROLL_OVER,this.§&k§);
         this.§[h§.removeEventListener(MouseEvent.ROLL_OUT,this.§`F§);
         this.§[h§.removeEventListener(Event.MOUSE_LEAVE,this.§`F§);
         this.§;#§.alpha = 0.5;
         var _loc1_:Class = §>!]§.§1!8§("Level_icon");
         this.§-%§ = new _loc1_();
         this.§-%§.x = width / 3;
         this.§-%§.y = height / 3;
         this.§-%§.width = §=_§;
         this.§-%§.scaleY = this.§-%§.scaleX;
         var _loc2_:MovieClip = this.§-%§ as MovieClip;
         ((_loc2_.getChildByName("TextField_Progress_Level") as MovieClip).getChildByName("text") as TextField).text = this.§%"#§.toString();
         addChild(this.§-%§);
         this.§9!c§ = true;
      }
      
      public function unlock() : void
      {
         if(!this.§7!w§)
         {
            return;
         }
         this.§[h§.addEventListener(MouseEvent.ROLL_OVER,this.§&k§);
         this.§[h§.addEventListener(MouseEvent.ROLL_OUT,this.§`F§);
         this.§[h§.addEventListener(Event.MOUSE_LEAVE,this.§`F§);
         this.§;#§.alpha = 1;
         removeChild(this.§-%§);
         this.§9!c§ = false;
         mouseEnabled = true;
         useHandCursor = true;
         mouseChildren = true;
         buttonMode = true;
      }
      
      public function get §7!w§() : Boolean
      {
         return this.§9!c§;
      }
      
      public function §,"$§(param1:int) : void
      {
         if(this.§0!s§ && this.§0!s§.parent)
         {
            this.§0!s§.parent.removeChild(this.§0!s§);
         }
         this.§0!s§ = new TextField();
         this.§0!s§.defaultTextFormat = new TextFormat("AngryBirdsPiggies",14,16777215);
         this.§0!s§.filters = [new GlowFilter(0,1,3,3,10)];
         this.§0!s§.autoSize = "center";
         this.§0!s§.text = param1.toString();
         this.§0!s§.x = width / 3;
         this.§0!s§.y = height / 3;
         addChild(this.§0!s§);
         this.§9!c§ = param1 < 1;
         this.§;#§.alpha = !!this.§9!c§ ? Number(0.5) : Number(1);
      }
      
      public function get §%"#§() : int
      {
         return this.§#!E§;
      }
   }
}
