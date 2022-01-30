package §^H§
{
   import §-=§.§8"1§;
   import §0Z§.§+I§;
   import §0Z§.§-!M§;
   import §5!8§.§+!?§;
   import com.rovio.assets.§!"'§;
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
   
   public class §"!i§ extends Sprite
   {
      
      private static const §]i§:int = 20;
       
      
      private var §+"§:Sprite;
      
      private var §3!;§:Sprite;
      
      private var §]b§:Boolean = false;
      
      private var §&!-§:§8=§;
      
      private var §!i§:int;
      
      private var §!X§:int;
      
      private var §-c§:Number;
      
      private var §7!e§:Boolean = false;
      
      private var §5v§:Boolean = false;
      
      private var §["8§:Number = 1;
      
      private var §2,§:§+I§;
      
      private var §@!C§:MovieClip;
      
      private var §]!u§:DisplayObject;
      
      private var §<!2§:TextField;
      
      private var §%!t§:String;
      
      private var §%,§:int;
      
      public function §"!i§(param1:String, param2:§+!?§, param3:DisplayObject, param4:Boolean = false, param5:Number = 1, param6:int = 2147483647)
      {
         this.§&!-§ = new §8=§();
         super();
         this.§-c§ = param5;
         this.§3!;§ = new Sprite();
         this.§3!;§.addChild(param3);
         this.§%!t§ = param1;
         param3.x = -param3.width / 2;
         param3.y = -param3.height / 2;
         this.§@!C§ = new MovieClip();
         this.§+"§ = new Sprite();
         this.§@!C§.addChild(this.§3!;§);
         this.§@!C§.addChild(this.§+"§);
         this.§!i§ = this.§3!;§.width;
         this.§!X§ = this.§3!;§.height;
         visible = true;
         this.§%,§ = param6;
         this.§@!C§.buttonMode = true;
         this.§@!C§.useHandCursor = true;
         this.§@!C§.addEventListener(MouseEvent.ROLL_OVER,this.§7F§);
         this.§@!C§.addEventListener(MouseEvent.ROLL_OUT,this.§>c§);
         this.§@!C§.addEventListener(Event.MOUSE_LEAVE,this.§>c§);
         addChild(this.§@!C§);
         param2.mClip.addChild(this);
      }
      
      private function §>c§(param1:MouseEvent) : void
      {
         if(this.§2,§ != null)
         {
            this.§2,§.stop();
         }
         var _loc2_:Number = this.§["8§ * this.§-c§;
         this.§2,§ = §-!M§.§ "!§.§+d§(this.§3!;§,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },null,0.05);
         this.§2,§.play();
         if(!this.§]b§)
         {
            this.§;!L§();
         }
      }
      
      private function §7F§(param1:MouseEvent) : void
      {
         if(this.§2,§ != null)
         {
            this.§2,§.stop();
         }
         var _loc2_:Number = 1;
         if(this.§["8§ * this.§-c§ == 1)
         {
            _loc2_ += 0.05;
         }
         this.§2,§ = §-!M§.§ "!§.§+d§(this.§3!;§,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },null,0.05);
         this.§2,§.play();
         parent.setChildIndex(this,parent.numChildren - 1);
         this.§&i§();
      }
      
      public function §'!;§() : void
      {
         this.§]b§ = true;
         this.§&i§();
         dispatchEvent(new §8"1§(§8"1§.§--§));
      }
      
      private function §&i§() : void
      {
         this.§&!-§.§^!G§(this.§3!;§.parent);
      }
      
      public function §;!L§() : void
      {
         this.§]b§ = false;
         this.§&!-§.§;w§(this.§3!;§.parent);
      }
      
      public function getItemName() : String
      {
         return this.§%!t§;
      }
      
      public function §1N§() : Bitmap
      {
         return this.§3!;§.getChildAt(0) as Bitmap;
      }
      
      public function §@""§() : BitmapData
      {
         var _loc1_:Array = this.§3!;§.filters;
         this.§3!;§.filters = [];
         var _loc2_:BitmapData = new BitmapData(this.§3!;§.width / this.§3!;§.scaleX,this.§3!;§.height / this.§3!;§.scaleY,true,0);
         _loc2_.draw(this.§3!;§);
         this.§3!;§.filters = _loc1_;
         return _loc2_;
      }
      
      public function setSize(param1:int, param2:int) : void
      {
         this.§+"§.graphics.clear();
         this.§+"§.graphics.beginFill(16711680,0);
         this.§+"§.graphics.drawRect(0,0,param1,param2);
         this.§+"§.graphics.endFill();
         this.§3!;§.x = this.§+"§.width / 2;
         this.§3!;§.y = this.§+"§.height / 2;
      }
      
      public function §;f§(param1:Number) : void
      {
         this.§["8§ = param1;
         this.§3!;§.scaleX = this.§["8§ * this.§-c§;
         this.§3!;§.scaleY = this.§["8§ * this.§-c§;
      }
      
      public function §@!@§() : int
      {
         return this.§3!;§.width;
      }
      
      public function §]!X§() : int
      {
         return this.§3!;§.height;
      }
      
      public function get §&!E§() : int
      {
         return this.§!i§ * this.§-c§;
      }
      
      public function get §0m§() : int
      {
         return this.§!X§ * this.§-c§;
      }
      
      public function lock() : void
      {
         if(this.§=" §)
         {
            return;
         }
         if(this.§]!u§ && this.§]!u§.parent)
         {
            this.§]!u§.parent.removeChild(this.§]!u§);
         }
         this.§@!C§.removeEventListener(MouseEvent.ROLL_OVER,this.§7F§);
         this.§@!C§.removeEventListener(MouseEvent.ROLL_OUT,this.§>c§);
         this.§@!C§.removeEventListener(Event.MOUSE_LEAVE,this.§>c§);
         this.§3!;§.alpha = 0.5;
         var _loc1_:Class = §!"'§.§%!Q§("Level_icon");
         this.§]!u§ = new _loc1_();
         this.§]!u§.x = width / 3;
         this.§]!u§.y = height / 3;
         this.§]!u§.width = §]i§;
         this.§]!u§.scaleY = this.§]!u§.scaleX;
         var _loc2_:MovieClip = this.§]!u§ as MovieClip;
         ((_loc2_.getChildByName("TextField_Progress_Level") as MovieClip).getChildByName("text") as TextField).text = this.§,!o§.toString();
         addChild(this.§]!u§);
         this.§7!e§ = true;
      }
      
      public function unlock() : void
      {
         if(!this.§=" §)
         {
            return;
         }
         this.§@!C§.addEventListener(MouseEvent.ROLL_OVER,this.§7F§);
         this.§@!C§.addEventListener(MouseEvent.ROLL_OUT,this.§>c§);
         this.§@!C§.addEventListener(Event.MOUSE_LEAVE,this.§>c§);
         this.§3!;§.alpha = 1;
         removeChild(this.§]!u§);
         this.§7!e§ = false;
         mouseEnabled = true;
         useHandCursor = true;
         mouseChildren = true;
         buttonMode = true;
      }
      
      public function get §=" §() : Boolean
      {
         return this.§7!e§;
      }
      
      public function §]"-§(param1:int) : void
      {
         if(this.§<!2§ && this.§<!2§.parent)
         {
            this.§<!2§.parent.removeChild(this.§<!2§);
         }
         this.§<!2§ = new TextField();
         this.§<!2§.defaultTextFormat = new TextFormat("AngryBirdsPiggies",14,16777215);
         this.§<!2§.filters = [new GlowFilter(0,1,3,3,10)];
         this.§<!2§.autoSize = "center";
         this.§<!2§.text = param1.toString();
         this.§<!2§.x = width / 3;
         this.§<!2§.y = height / 3;
         addChild(this.§<!2§);
         this.§7!e§ = param1 < 1;
         this.§3!;§.alpha = !!this.§7!e§ ? Number(0.5) : Number(1);
      }
      
      public function get §,!o§() : int
      {
         return this.§%,§;
      }
   }
}
