package §@!H§
{
   import §!D§.§ use§;
   import §"!0§.§"!5§;
   import §"!0§.§;!5§;
   import §,m§.§?"%§;
   import com.rovio.assets.§%"4§;
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
   
   public class §;!L§ extends Sprite
   {
       
      
      private var §=!=§:Sprite;
      
      private var §0Z§:Sprite;
      
      private var §>!S§:Boolean = false;
      
      private var §0!&§:§ 8§;
      
      private var §3c§:int;
      
      private var §%",§:int;
      
      private var §<E§:Number;
      
      private var §`a§:Boolean = false;
      
      private var §1!1§:Boolean = false;
      
      private var § N§:Number = 1;
      
      private var §@!N§:§;!5§;
      
      private var §`! §:MovieClip;
      
      private var §>!5§:DisplayObject;
      
      private var §"!u§:TextField;
      
      private var §6u§:String;
      
      public function §;!L§(param1:String, param2:§ use§, param3:DisplayObject, param4:Boolean = false, param5:Number = 1)
      {
         this.§0!&§ = new § 8§();
         super();
         this.§<E§ = param5;
         this.§0Z§ = new Sprite();
         this.§0Z§.addChild(param3);
         this.§6u§ = param1;
         param3.x = -param3.width / 2;
         param3.y = -param3.height / 2;
         this.§`! § = new MovieClip();
         this.§=!=§ = new Sprite();
         this.§`! §.addChild(this.§0Z§);
         this.§`! §.addChild(this.§=!=§);
         this.§3c§ = this.§0Z§.width;
         this.§%",§ = this.§0Z§.height;
         visible = true;
         this.§`! §.buttonMode = true;
         this.§`! §.useHandCursor = true;
         this.§`! §.addEventListener(MouseEvent.ROLL_OVER,this.§+&§);
         this.§`! §.addEventListener(MouseEvent.ROLL_OUT,this.§3R§);
         this.§`! §.addEventListener(Event.MOUSE_LEAVE,this.§3R§);
         addChild(this.§`! §);
         param2.mClip.addChild(this);
      }
      
      private function §3R§(param1:MouseEvent) : void
      {
         if(this.§@!N§ != null)
         {
            this.§@!N§.stop();
         }
         var _loc2_:Number = this.§ N§ * this.§<E§;
         this.§@!N§ = §"!5§.§9j§.§4!p§(this.§0Z§,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },null,0.05);
         this.§@!N§.play();
         if(!this.§>!S§)
         {
            this.§,i§();
         }
      }
      
      private function §+&§(param1:MouseEvent) : void
      {
         if(this.§@!N§ != null)
         {
            this.§@!N§.stop();
         }
         var _loc2_:Number = 1;
         if(this.§ N§ * this.§<E§ == 1)
         {
            _loc2_ += 0.05;
         }
         this.§@!N§ = §"!5§.§9j§.§4!p§(this.§0Z§,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },null,0.05);
         this.§@!N§.play();
         parent.setChildIndex(this,parent.numChildren - 1);
         this.§[y§();
      }
      
      public function §&5§() : void
      {
         this.§>!S§ = true;
         this.§[y§();
         dispatchEvent(new §?"%§(§?"%§.§"!H§));
      }
      
      private function §[y§() : void
      {
         this.§0!&§.§?U§(this.§0Z§.parent);
      }
      
      public function §,i§() : void
      {
         this.§>!S§ = false;
         this.§0!&§.§!i§(this.§0Z§.parent);
      }
      
      public function getItemName() : String
      {
         return this.§6u§;
      }
      
      public function §;!-§() : Bitmap
      {
         return this.§0Z§.getChildAt(0) as Bitmap;
      }
      
      public function §<2§() : BitmapData
      {
         var _loc1_:Array = this.§0Z§.filters;
         this.§0Z§.filters = [];
         var _loc2_:BitmapData = new BitmapData(this.§0Z§.width / this.§0Z§.scaleX,this.§0Z§.height / this.§0Z§.scaleY,true,0);
         _loc2_.draw(this.§0Z§);
         this.§0Z§.filters = _loc1_;
         return _loc2_;
      }
      
      public function setSize(param1:int, param2:int) : void
      {
         this.§=!=§.graphics.clear();
         this.§=!=§.graphics.beginFill(16711680,0);
         this.§=!=§.graphics.drawRect(0,0,param1,param2);
         this.§=!=§.graphics.endFill();
         this.§0Z§.x = this.§=!=§.width / 2;
         this.§0Z§.y = this.§=!=§.height / 2;
      }
      
      public function §8!'§(param1:Number) : void
      {
         this.§ N§ = param1;
         this.§0Z§.scaleX = this.§ N§ * this.§<E§;
         this.§0Z§.scaleY = this.§ N§ * this.§<E§;
      }
      
      public function §-!N§() : int
      {
         return this.§0Z§.width;
      }
      
      public function §#!x§() : int
      {
         return this.§0Z§.height;
      }
      
      public function get §^!?§() : int
      {
         return this.§3c§ * this.§<E§;
      }
      
      public function get §!C§() : int
      {
         return this.§%",§ * this.§<E§;
      }
      
      public function lock() : void
      {
         if(this.§'z§)
         {
            return;
         }
         if(this.§>!5§ && this.§>!5§.parent)
         {
            this.§>!5§.parent.removeChild(this.§>!5§);
         }
         this.§`! §.removeEventListener(MouseEvent.ROLL_OVER,this.§+&§);
         this.§`! §.removeEventListener(MouseEvent.ROLL_OUT,this.§3R§);
         this.§`! §.removeEventListener(Event.MOUSE_LEAVE,this.§3R§);
         this.§0Z§.alpha = 0.5;
         var _loc1_:Class = §%"4§.§>!v§("Level_icon");
         this.§>!5§ = new _loc1_();
         this.§>!5§.x = width / 3;
         this.§>!5§.y = height / 3;
         this.§>!5§.width = 20;
         this.§>!5§.height = 20;
         addChild(this.§>!5§);
         this.§`a§ = true;
      }
      
      public function unlock() : void
      {
         if(!this.§'z§)
         {
            return;
         }
         this.§`! §.addEventListener(MouseEvent.ROLL_OVER,this.§+&§);
         this.§`! §.addEventListener(MouseEvent.ROLL_OUT,this.§3R§);
         this.§`! §.addEventListener(Event.MOUSE_LEAVE,this.§3R§);
         this.§0Z§.alpha = 1;
         removeChild(this.§>!5§);
         this.§`a§ = false;
         mouseEnabled = true;
         useHandCursor = true;
         mouseChildren = true;
         buttonMode = true;
      }
      
      public function get §'z§() : Boolean
      {
         return this.§`a§;
      }
      
      public function §;"2§(param1:int) : void
      {
         if(this.§"!u§ && this.§"!u§.parent)
         {
            this.§"!u§.parent.removeChild(this.§"!u§);
         }
         this.§"!u§ = new TextField();
         this.§"!u§.defaultTextFormat = new TextFormat("AngryBirdsPiggies",14,16777215);
         this.§"!u§.filters = [new GlowFilter(0,1,3,3,10)];
         this.§"!u§.autoSize = "center";
         this.§"!u§.text = param1.toString();
         this.§"!u§.x = width / 3;
         this.§"!u§.y = height / 3;
         addChild(this.§"!u§);
         this.§`a§ = param1 < 1;
         this.§0Z§.alpha = !!this.§`a§ ? Number(0.5) : Number(1);
      }
   }
}
