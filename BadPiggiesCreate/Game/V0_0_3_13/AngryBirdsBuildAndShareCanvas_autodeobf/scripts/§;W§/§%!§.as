package §;W§
{
   import § true§.§1H§;
   import §7!g§.§?!i§;
   import §catch§.§"L§;
   import §catch§.§-!m§;
   import com.rovio.assets.§=#§;
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
   
   public class §%!§ extends Sprite
   {
      
      private static const §&E§:int = 20;
       
      
      private var §"!o§:Sprite;
      
      private var §?!§:Sprite;
      
      private var §&§:Boolean = false;
      
      private var §>C§:§,!e§;
      
      private var §%@§:int;
      
      private var §2m§:int;
      
      private var §5R§:Number;
      
      private var §"!Z§:Boolean = false;
      
      private var §^!h§:Boolean = false;
      
      private var §>J§:Number = 1;
      
      private var §^m§:§-!m§;
      
      private var §2d§:MovieClip;
      
      private var §2+§:DisplayObject;
      
      private var §2! §:TextField;
      
      private var §=!+§:String;
      
      private var § ,§:int;
      
      public function §%!§(param1:String, param2:§1H§, param3:DisplayObject, param4:Boolean = false, param5:Number = 1, param6:int = 2147483647)
      {
         this.§>C§ = new §,!e§();
         super();
         this.§5R§ = param5;
         this.§?!§ = new Sprite();
         this.§?!§.addChild(param3);
         this.§=!+§ = param1;
         param3.x = -param3.width / 2;
         param3.y = -param3.height / 2;
         this.§2d§ = new MovieClip();
         this.§"!o§ = new Sprite();
         this.§2d§.addChild(this.§?!§);
         this.§2d§.addChild(this.§"!o§);
         this.§%@§ = this.§?!§.width;
         this.§2m§ = this.§?!§.height;
         visible = true;
         this.§ ,§ = param6;
         this.§2d§.buttonMode = true;
         this.§2d§.useHandCursor = true;
         this.§2d§.addEventListener(MouseEvent.ROLL_OVER,this.§5!"§);
         this.§2d§.addEventListener(MouseEvent.ROLL_OUT,this.§4!M§);
         this.§2d§.addEventListener(Event.MOUSE_LEAVE,this.§4!M§);
         addChild(this.§2d§);
         param2.mClip.addChild(this);
      }
      
      private function §4!M§(param1:MouseEvent) : void
      {
         if(this.§^m§ != null)
         {
            this.§^m§.stop();
         }
         var _loc2_:Number = this.§>J§ * this.§5R§;
         this.§^m§ = §"L§.§7!?§.§4!P§(this.§?!§,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },null,0.05);
         this.§^m§.play();
         if(!this.§&§)
         {
            this.§>;§();
         }
      }
      
      private function §5!"§(param1:MouseEvent) : void
      {
         if(this.§^m§ != null)
         {
            this.§^m§.stop();
         }
         var _loc2_:Number = 1;
         if(this.§>J§ * this.§5R§ == 1)
         {
            _loc2_ += 0.05;
         }
         this.§^m§ = §"L§.§7!?§.§4!P§(this.§?!§,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },null,0.05);
         this.§^m§.play();
         parent.setChildIndex(this,parent.numChildren - 1);
         this.§;!W§();
      }
      
      public function §]p§() : void
      {
         this.§&§ = true;
         this.§;!W§();
         dispatchEvent(new §?!i§(§?!i§.§8!G§));
      }
      
      private function §;!W§() : void
      {
         this.§>C§.§;@§(this.§?!§.parent);
      }
      
      public function §>;§() : void
      {
         this.§&§ = false;
         this.§>C§.§"#§(this.§?!§.parent);
      }
      
      public function getItemName() : String
      {
         return this.§=!+§;
      }
      
      public function §>w§() : Bitmap
      {
         return this.§?!§.getChildAt(0) as Bitmap;
      }
      
      public function §[Q§() : BitmapData
      {
         var _loc1_:Array = this.§?!§.filters;
         this.§?!§.filters = [];
         var _loc2_:BitmapData = new BitmapData(this.§?!§.width / this.§?!§.scaleX,this.§?!§.height / this.§?!§.scaleY,true,0);
         _loc2_.draw(this.§?!§);
         this.§?!§.filters = _loc1_;
         return _loc2_;
      }
      
      public function setSize(param1:int, param2:int) : void
      {
         this.§"!o§.graphics.clear();
         this.§"!o§.graphics.beginFill(16711680,0);
         this.§"!o§.graphics.drawRect(0,0,param1,param2);
         this.§"!o§.graphics.endFill();
         this.§?!§.x = this.§"!o§.width / 2;
         this.§?!§.y = this.§"!o§.height / 2;
      }
      
      public function §`!C§(param1:Number) : void
      {
         this.§>J§ = param1;
         this.§?!§.scaleX = this.§>J§ * this.§5R§;
         this.§?!§.scaleY = this.§>J§ * this.§5R§;
      }
      
      public function § "#§() : int
      {
         return this.§?!§.width;
      }
      
      public function §#!M§() : int
      {
         return this.§?!§.height;
      }
      
      public function get §7!C§() : int
      {
         return this.§%@§ * this.§5R§;
      }
      
      public function get §]!M§() : int
      {
         return this.§2m§ * this.§5R§;
      }
      
      public function lock() : void
      {
         if(this.§3!r§)
         {
            return;
         }
         if(this.§2+§ && this.§2+§.parent)
         {
            this.§2+§.parent.removeChild(this.§2+§);
         }
         this.§2d§.removeEventListener(MouseEvent.ROLL_OVER,this.§5!"§);
         this.§2d§.removeEventListener(MouseEvent.ROLL_OUT,this.§4!M§);
         this.§2d§.removeEventListener(Event.MOUSE_LEAVE,this.§4!M§);
         this.§?!§.alpha = 0.5;
         var _loc1_:Class = §=#§.§1v§("Level_icon");
         this.§2+§ = new _loc1_();
         this.§2+§.x = width / 3;
         this.§2+§.y = height / 3;
         this.§2+§.width = §&E§;
         this.§2+§.scaleY = this.§2+§.scaleX;
         var _loc2_:MovieClip = this.§2+§ as MovieClip;
         ((_loc2_.getChildByName("TextField_Progress_Level") as MovieClip).getChildByName("text") as TextField).text = this.§=!§.toString();
         addChild(this.§2+§);
         this.§"!Z§ = true;
      }
      
      public function unlock() : void
      {
         if(!this.§3!r§)
         {
            return;
         }
         this.§2d§.addEventListener(MouseEvent.ROLL_OVER,this.§5!"§);
         this.§2d§.addEventListener(MouseEvent.ROLL_OUT,this.§4!M§);
         this.§2d§.addEventListener(Event.MOUSE_LEAVE,this.§4!M§);
         this.§?!§.alpha = 1;
         removeChild(this.§2+§);
         this.§"!Z§ = false;
         mouseEnabled = true;
         useHandCursor = true;
         mouseChildren = true;
         buttonMode = true;
      }
      
      public function get §3!r§() : Boolean
      {
         return this.§"!Z§;
      }
      
      public function §;V§(param1:int) : void
      {
         if(this.§2! § && this.§2! §.parent)
         {
            this.§2! §.parent.removeChild(this.§2! §);
         }
         this.§2! § = new TextField();
         this.§2! §.defaultTextFormat = new TextFormat("AngryBirdsPiggies",14,16777215);
         this.§2! §.filters = [new GlowFilter(0,1,3,3,10)];
         this.§2! §.autoSize = "center";
         this.§2! §.text = param1.toString();
         this.§2! §.x = width / 3;
         this.§2! §.y = height / 3;
         addChild(this.§2! §);
         this.§"!Z§ = param1 < 1;
         this.§?!§.alpha = !!this.§"!Z§ ? Number(0.5) : Number(1);
      }
      
      public function get §=!§() : int
      {
         return this.§ ,§;
      }
   }
}
