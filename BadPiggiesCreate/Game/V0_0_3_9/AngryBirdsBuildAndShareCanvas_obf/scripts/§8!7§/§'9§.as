package §8!7§
{
   import §5!k§.§6"6§;
   import §<!I§.§>"-§;
   import §>!J§.§"g§;
   import §>!J§.§^!#§;
   import com.rovio.assets.§8!q§;
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
   
   public class §'9§ extends Sprite
   {
      
      private static const §["3§:int = 20;
       
      
      private var §@!<§:Sprite;
      
      private var §+!9§:Sprite;
      
      private var §?y§:Boolean = false;
      
      private var §7l§:§`!#§;
      
      private var §9!P§:int;
      
      private var §1"#§:int;
      
      private var §""9§:Number;
      
      private var §@!y§:Boolean = false;
      
      private var §"!K§:Boolean = false;
      
      private var §+g§:Number = 1;
      
      private var §2y§:§^!#§;
      
      private var §#!d§:MovieClip;
      
      private var §=i§:DisplayObject;
      
      private var §+!n§:TextField;
      
      private var §@!'§:String;
      
      public function §'9§(param1:String, param2:§>"-§, param3:DisplayObject, param4:Boolean = false, param5:Number = 1)
      {
         this.§7l§ = new §`!#§();
         super();
         this.§""9§ = param5;
         this.§+!9§ = new Sprite();
         this.§+!9§.addChild(param3);
         this.§@!'§ = param1;
         param3.x = -param3.width / 2;
         param3.y = -param3.height / 2;
         this.§#!d§ = new MovieClip();
         this.§@!<§ = new Sprite();
         this.§#!d§.addChild(this.§+!9§);
         this.§#!d§.addChild(this.§@!<§);
         this.§9!P§ = this.§+!9§.width;
         this.§1"#§ = this.§+!9§.height;
         visible = true;
         this.§#!d§.buttonMode = true;
         this.§#!d§.useHandCursor = true;
         this.§#!d§.addEventListener(MouseEvent.ROLL_OVER,this.§'"&§);
         this.§#!d§.addEventListener(MouseEvent.ROLL_OUT,this.§,"4§);
         this.§#!d§.addEventListener(Event.MOUSE_LEAVE,this.§,"4§);
         addChild(this.§#!d§);
         param2.mClip.addChild(this);
      }
      
      private function §,"4§(param1:MouseEvent) : void
      {
         if(this.§2y§ != null)
         {
            this.§2y§.stop();
         }
         var _loc2_:Number = this.§+g§ * this.§""9§;
         this.§2y§ = §"g§.§'!o§.§while§(this.§+!9§,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },null,0.05);
         this.§2y§.play();
         if(!this.§?y§)
         {
            this.§?W§();
         }
      }
      
      private function §'"&§(param1:MouseEvent) : void
      {
         if(this.§2y§ != null)
         {
            this.§2y§.stop();
         }
         var _loc2_:Number = 1;
         if(this.§+g§ * this.§""9§ == 1)
         {
            _loc2_ += 0.05;
         }
         this.§2y§ = §"g§.§'!o§.§while§(this.§+!9§,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },null,0.05);
         this.§2y§.play();
         parent.setChildIndex(this,parent.numChildren - 1);
         this.§>!z§();
      }
      
      public function §+!_§() : void
      {
         this.§?y§ = true;
         this.§>!z§();
         dispatchEvent(new §6"6§(§6"6§.§@!%§));
      }
      
      private function §>!z§() : void
      {
         this.§7l§.§;!@§(this.§+!9§.parent);
      }
      
      public function §?W§() : void
      {
         this.§?y§ = false;
         this.§7l§.§8!S§(this.§+!9§.parent);
      }
      
      public function getItemName() : String
      {
         return this.§@!'§;
      }
      
      public function §1"7§() : Bitmap
      {
         return this.§+!9§.getChildAt(0) as Bitmap;
      }
      
      public function §""0§() : BitmapData
      {
         var _loc1_:Array = this.§+!9§.filters;
         this.§+!9§.filters = [];
         var _loc2_:BitmapData = new BitmapData(this.§+!9§.width / this.§+!9§.scaleX,this.§+!9§.height / this.§+!9§.scaleY,true,0);
         _loc2_.draw(this.§+!9§);
         this.§+!9§.filters = _loc1_;
         return _loc2_;
      }
      
      public function setSize(param1:int, param2:int) : void
      {
         this.§@!<§.graphics.clear();
         this.§@!<§.graphics.beginFill(16711680,0);
         this.§@!<§.graphics.drawRect(0,0,param1,param2);
         this.§@!<§.graphics.endFill();
         this.§+!9§.x = this.§@!<§.width / 2;
         this.§+!9§.y = this.§@!<§.height / 2;
      }
      
      public function §4!w§(param1:Number) : void
      {
         this.§+g§ = param1;
         this.§+!9§.scaleX = this.§+g§ * this.§""9§;
         this.§+!9§.scaleY = this.§+g§ * this.§""9§;
      }
      
      public function §1!5§() : int
      {
         return this.§+!9§.width;
      }
      
      public function §,!2§() : int
      {
         return this.§+!9§.height;
      }
      
      public function get §7>§() : int
      {
         return this.§9!P§ * this.§""9§;
      }
      
      public function get §@!c§() : int
      {
         return this.§1"#§ * this.§""9§;
      }
      
      public function lock() : void
      {
         if(this.§]!9§)
         {
            return;
         }
         if(this.§=i§ && this.§=i§.parent)
         {
            this.§=i§.parent.removeChild(this.§=i§);
         }
         this.§#!d§.removeEventListener(MouseEvent.ROLL_OVER,this.§'"&§);
         this.§#!d§.removeEventListener(MouseEvent.ROLL_OUT,this.§,"4§);
         this.§#!d§.removeEventListener(Event.MOUSE_LEAVE,this.§,"4§);
         this.§+!9§.alpha = 0.5;
         var _loc1_:Class = §8!q§.§2^§("Level_icon");
         this.§=i§ = new _loc1_();
         this.§=i§.x = width / 3;
         this.§=i§.y = height / 3;
         this.§=i§.width = §["3§;
         this.§=i§.scaleY = this.§=i§.scaleX;
         addChild(this.§=i§);
         this.§@!y§ = true;
      }
      
      public function unlock() : void
      {
         if(!this.§]!9§)
         {
            return;
         }
         this.§#!d§.addEventListener(MouseEvent.ROLL_OVER,this.§'"&§);
         this.§#!d§.addEventListener(MouseEvent.ROLL_OUT,this.§,"4§);
         this.§#!d§.addEventListener(Event.MOUSE_LEAVE,this.§,"4§);
         this.§+!9§.alpha = 1;
         removeChild(this.§=i§);
         this.§@!y§ = false;
         mouseEnabled = true;
         useHandCursor = true;
         mouseChildren = true;
         buttonMode = true;
      }
      
      public function get §]!9§() : Boolean
      {
         return this.§@!y§;
      }
      
      public function §`3§(param1:int) : void
      {
         if(this.§+!n§ && this.§+!n§.parent)
         {
            this.§+!n§.parent.removeChild(this.§+!n§);
         }
         this.§+!n§ = new TextField();
         this.§+!n§.defaultTextFormat = new TextFormat("AngryBirdsPiggies",14,16777215);
         this.§+!n§.filters = [new GlowFilter(0,1,3,3,10)];
         this.§+!n§.autoSize = "center";
         this.§+!n§.text = param1.toString();
         this.§+!n§.x = width / 3;
         this.§+!n§.y = height / 3;
         addChild(this.§+!n§);
         this.§@!y§ = param1 < 1;
         this.§+!9§.alpha = !!this.§@!y§ ? Number(0.5) : Number(1);
      }
   }
}
