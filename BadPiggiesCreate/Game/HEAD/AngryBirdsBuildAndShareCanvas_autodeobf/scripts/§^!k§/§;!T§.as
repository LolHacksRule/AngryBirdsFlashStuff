package §^!k§
{
   import §"_§.§!"8§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §=!7§.§6W§;
   import com.rovio.assets.§69§;
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
   
   public class §;!T§ extends Sprite
   {
      
      private static const §8!t§:int = 20;
       
      
      private var §,!o§:Sprite;
      
      private var §!T§:Sprite;
      
      private var §-!6§:Boolean = false;
      
      private var §`k§:§1",§;
      
      private var §<!!§:int;
      
      private var §`!V§:int;
      
      private var §4!g§:Number;
      
      private var §!!6§:Boolean = false;
      
      private var §-!z§:Boolean = false;
      
      private var §<c§:Number = 1;
      
      private var §,!c§:§=!r§;
      
      private var §@"<§:MovieClip;
      
      private var §='§:DisplayObject;
      
      private var §-!S§:TextField;
      
      private var §+!A§:String;
      
      private var §6">§:int;
      
      public function §;!T§(param1:String, param2:§6W§, param3:DisplayObject, param4:Boolean = false, param5:Number = 1, param6:int = 2147483647)
      {
         this.§`k§ = new §1",§();
         super();
         this.§4!g§ = param5;
         this.§!T§ = new Sprite();
         this.§!T§.addChild(param3);
         this.§+!A§ = param1;
         param3.x = -param3.width / 2;
         param3.y = -param3.height / 2;
         this.§@"<§ = new MovieClip();
         this.§,!o§ = new Sprite();
         this.§@"<§.addChild(this.§!T§);
         this.§@"<§.addChild(this.§,!o§);
         this.§<!!§ = this.§!T§.width;
         this.§`!V§ = this.§!T§.height;
         visible = true;
         this.§6">§ = param6;
         this.§@"<§.buttonMode = true;
         this.§@"<§.useHandCursor = true;
         this.§@"<§.addEventListener(MouseEvent.ROLL_OVER,this.§@"8§);
         this.§@"<§.addEventListener(MouseEvent.ROLL_OUT,this.§+!h§);
         this.§@"<§.addEventListener(Event.MOUSE_LEAVE,this.§+!h§);
         addChild(this.§@"<§);
         param2.mClip.addChild(this);
      }
      
      private function §+!h§(param1:MouseEvent) : void
      {
         if(this.§,!c§ != null)
         {
            this.§,!c§.stop();
         }
         var _loc2_:Number = this.§<c§ * this.§4!g§;
         this.§,!c§ = §7I§.§[E§.§ ";§(this.§!T§,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },null,0.05);
         this.§,!c§.play();
         if(!this.§-!6§)
         {
            this.§%z§();
         }
      }
      
      private function §@"8§(param1:MouseEvent) : void
      {
         if(this.§,!c§ != null)
         {
            this.§,!c§.stop();
         }
         var _loc2_:Number = 1;
         if(this.§<c§ * this.§4!g§ == 1)
         {
            _loc2_ += 0.05;
         }
         this.§,!c§ = §7I§.§[E§.§ ";§(this.§!T§,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },null,0.05);
         this.§,!c§.play();
         parent.setChildIndex(this,parent.numChildren - 1);
         this.§[!$§();
      }
      
      public function §%q§() : void
      {
         this.§-!6§ = true;
         this.§[!$§();
         dispatchEvent(new §!"8§(§!"8§.§9!`§));
      }
      
      private function §[!$§() : void
      {
         this.§`k§.§#!>§(this.§!T§.parent);
      }
      
      public function §%z§() : void
      {
         this.§-!6§ = false;
         this.§`k§.§8"-§(this.§!T§.parent);
      }
      
      public function getItemName() : String
      {
         return this.§+!A§;
      }
      
      public function §4"7§() : Bitmap
      {
         return this.§!T§.getChildAt(0) as Bitmap;
      }
      
      public function §!"#§() : BitmapData
      {
         var _loc1_:Array = this.§!T§.filters;
         this.§!T§.filters = [];
         var _loc2_:BitmapData = new BitmapData(this.§!T§.width / this.§!T§.scaleX,this.§!T§.height / this.§!T§.scaleY,true,0);
         _loc2_.draw(this.§!T§);
         this.§!T§.filters = _loc1_;
         return _loc2_;
      }
      
      public function setSize(param1:int, param2:int) : void
      {
         this.§,!o§.graphics.clear();
         this.§,!o§.graphics.beginFill(16711680,0);
         this.§,!o§.graphics.drawRect(0,0,param1,param2);
         this.§,!o§.graphics.endFill();
         this.§!T§.x = this.§,!o§.width / 2;
         this.§!T§.y = this.§,!o§.height / 2;
      }
      
      public function §@V§(param1:Number) : void
      {
         this.§<c§ = param1;
         this.§!T§.scaleX = this.§<c§ * this.§4!g§;
         this.§!T§.scaleY = this.§<c§ * this.§4!g§;
      }
      
      public function §%Y§() : int
      {
         return this.§!T§.width;
      }
      
      public function §=W§() : int
      {
         return this.§!T§.height;
      }
      
      public function get §89§() : int
      {
         return this.§<!!§ * this.§4!g§;
      }
      
      public function get §7§() : int
      {
         return this.§`!V§ * this.§4!g§;
      }
      
      public function lock() : void
      {
         if(this.§`F§)
         {
            return;
         }
         if(this.§='§ && this.§='§.parent)
         {
            this.§='§.parent.removeChild(this.§='§);
         }
         this.§@"<§.removeEventListener(MouseEvent.ROLL_OVER,this.§@"8§);
         this.§@"<§.removeEventListener(MouseEvent.ROLL_OUT,this.§+!h§);
         this.§@"<§.removeEventListener(Event.MOUSE_LEAVE,this.§+!h§);
         this.§!T§.alpha = 0.5;
         var _loc1_:Class = §69§.§ 0§("Level_icon");
         this.§='§ = new _loc1_();
         this.§='§.x = width / 3;
         this.§='§.y = height / 3;
         this.§='§.width = §8!t§;
         this.§='§.scaleY = this.§='§.scaleX;
         var _loc2_:MovieClip = this.§='§ as MovieClip;
         ((_loc2_.getChildByName("TextField_Progress_Level") as MovieClip).getChildByName("text") as TextField).text = this.§%!M§.toString();
         addChild(this.§='§);
         this.§!!6§ = true;
      }
      
      public function unlock() : void
      {
         if(!this.§`F§)
         {
            return;
         }
         this.§@"<§.addEventListener(MouseEvent.ROLL_OVER,this.§@"8§);
         this.§@"<§.addEventListener(MouseEvent.ROLL_OUT,this.§+!h§);
         this.§@"<§.addEventListener(Event.MOUSE_LEAVE,this.§+!h§);
         this.§!T§.alpha = 1;
         removeChild(this.§='§);
         this.§!!6§ = false;
         mouseEnabled = true;
         useHandCursor = true;
         mouseChildren = true;
         buttonMode = true;
      }
      
      public function get §`F§() : Boolean
      {
         return this.§!!6§;
      }
      
      public function §9B§(param1:int) : void
      {
         if(this.§-!S§ && this.§-!S§.parent)
         {
            this.§-!S§.parent.removeChild(this.§-!S§);
         }
         this.§-!S§ = new TextField();
         this.§-!S§.defaultTextFormat = new TextFormat("AngryBirdsPiggies",14,16777215);
         this.§-!S§.filters = [new GlowFilter(0,1,3,3,10)];
         this.§-!S§.autoSize = "center";
         this.§-!S§.text = param1.toString();
         this.§-!S§.x = width / 3;
         this.§-!S§.y = height / 3;
         addChild(this.§-!S§);
         this.§!!6§ = param1 < 1;
         this.§!T§.alpha = !!this.§!!6§ ? Number(0.5) : Number(1);
      }
      
      public function get §%!M§() : int
      {
         return this.§6">§;
      }
   }
}
