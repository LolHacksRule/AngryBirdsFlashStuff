package §9!l§
{
   import §;!§.§8V§;
   import §;!A§.§;!u§;
   import §?h§.§%!Z§;
   import §?h§.§8!K§;
   import com.rovio.assets.§]!S§;
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
   
   public class §@O§ extends Sprite
   {
      
      private static const §&!2§:int = 20;
       
      
      private var §18§:Sprite;
      
      private var §`"1§:Sprite;
      
      private var §!",§:Boolean = false;
      
      private var §1Z§:§[!&§;
      
      private var §+!M§:int;
      
      private var §+!X§:int;
      
      private var §!"9§:Number;
      
      private var §%"8§:Boolean = false;
      
      private var §4k§:Boolean = false;
      
      private var §9!@§:Number = 1;
      
      private var §#",§:§8!K§;
      
      private var §5!A§:MovieClip;
      
      private var §%!-§:DisplayObject;
      
      private var §1!q§:TextField;
      
      private var §"g§:String;
      
      public function §@O§(param1:String, param2:§;!u§, param3:DisplayObject, param4:Boolean = false, param5:Number = 1)
      {
         this.§1Z§ = new §[!&§();
         super();
         this.§!"9§ = param5;
         this.§`"1§ = new Sprite();
         this.§`"1§.addChild(param3);
         this.§"g§ = param1;
         param3.x = -param3.width / 2;
         param3.y = -param3.height / 2;
         this.§5!A§ = new MovieClip();
         this.§18§ = new Sprite();
         this.§5!A§.addChild(this.§`"1§);
         this.§5!A§.addChild(this.§18§);
         this.§+!M§ = this.§`"1§.width;
         this.§+!X§ = this.§`"1§.height;
         visible = true;
         this.§5!A§.buttonMode = true;
         this.§5!A§.useHandCursor = true;
         this.§5!A§.addEventListener(MouseEvent.ROLL_OVER,this.§ 1§);
         this.§5!A§.addEventListener(MouseEvent.ROLL_OUT,this.§ !G§);
         this.§5!A§.addEventListener(Event.MOUSE_LEAVE,this.§ !G§);
         addChild(this.§5!A§);
         param2.mClip.addChild(this);
      }
      
      private function § !G§(param1:MouseEvent) : void
      {
         if(this.§#",§ != null)
         {
            this.§#",§.stop();
         }
         var _loc2_:Number = this.§9!@§ * this.§!"9§;
         this.§#",§ = §%!Z§.§if §.§"<§(this.§`"1§,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },null,0.05);
         this.§#",§.play();
         if(!this.§!",§)
         {
            this.§6"&§();
         }
      }
      
      private function § 1§(param1:MouseEvent) : void
      {
         if(this.§#",§ != null)
         {
            this.§#",§.stop();
         }
         var _loc2_:Number = 1;
         if(this.§9!@§ * this.§!"9§ == 1)
         {
            _loc2_ += 0.05;
         }
         this.§#",§ = §%!Z§.§if §.§"<§(this.§`"1§,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },null,0.05);
         this.§#",§.play();
         parent.setChildIndex(this,parent.numChildren - 1);
         this.§[!§();
      }
      
      public function § !A§() : void
      {
         this.§!",§ = true;
         this.§[!§();
         dispatchEvent(new §8V§(§8V§.§9t§));
      }
      
      private function §[!§() : void
      {
         this.§1Z§.§<e§(this.§`"1§.parent);
      }
      
      public function §6"&§() : void
      {
         this.§!",§ = false;
         this.§1Z§.§-! §(this.§`"1§.parent);
      }
      
      public function getItemName() : String
      {
         return this.§"g§;
      }
      
      public function §^G§() : Bitmap
      {
         return this.§`"1§.getChildAt(0) as Bitmap;
      }
      
      public function §0W§() : BitmapData
      {
         var _loc1_:Array = this.§`"1§.filters;
         this.§`"1§.filters = [];
         var _loc2_:BitmapData = new BitmapData(this.§`"1§.width / this.§`"1§.scaleX,this.§`"1§.height / this.§`"1§.scaleY,true,0);
         _loc2_.draw(this.§`"1§);
         this.§`"1§.filters = _loc1_;
         return _loc2_;
      }
      
      public function setSize(param1:int, param2:int) : void
      {
         this.§18§.graphics.clear();
         this.§18§.graphics.beginFill(16711680,0);
         this.§18§.graphics.drawRect(0,0,param1,param2);
         this.§18§.graphics.endFill();
         this.§`"1§.x = this.§18§.width / 2;
         this.§`"1§.y = this.§18§.height / 2;
      }
      
      public function §]!#§(param1:Number) : void
      {
         this.§9!@§ = param1;
         this.§`"1§.scaleX = this.§9!@§ * this.§!"9§;
         this.§`"1§.scaleY = this.§9!@§ * this.§!"9§;
      }
      
      public function §1!K§() : int
      {
         return this.§`"1§.width;
      }
      
      public function §#f§() : int
      {
         return this.§`"1§.height;
      }
      
      public function get §'!2§() : int
      {
         return this.§+!M§ * this.§!"9§;
      }
      
      public function get §8"3§() : int
      {
         return this.§+!X§ * this.§!"9§;
      }
      
      public function lock() : void
      {
         if(this.§[!?§)
         {
            return;
         }
         if(this.§%!-§ && this.§%!-§.parent)
         {
            this.§%!-§.parent.removeChild(this.§%!-§);
         }
         this.§5!A§.removeEventListener(MouseEvent.ROLL_OVER,this.§ 1§);
         this.§5!A§.removeEventListener(MouseEvent.ROLL_OUT,this.§ !G§);
         this.§5!A§.removeEventListener(Event.MOUSE_LEAVE,this.§ !G§);
         this.§`"1§.alpha = 0.5;
         var _loc1_:Class = §]!S§.§?! §("Level_icon");
         this.§%!-§ = new _loc1_();
         this.§%!-§.x = width / 3;
         this.§%!-§.y = height / 3;
         this.§%!-§.width = §&!2§;
         this.§%!-§.scaleY = this.§%!-§.scaleX;
         addChild(this.§%!-§);
         this.§%"8§ = true;
      }
      
      public function unlock() : void
      {
         if(!this.§[!?§)
         {
            return;
         }
         this.§5!A§.addEventListener(MouseEvent.ROLL_OVER,this.§ 1§);
         this.§5!A§.addEventListener(MouseEvent.ROLL_OUT,this.§ !G§);
         this.§5!A§.addEventListener(Event.MOUSE_LEAVE,this.§ !G§);
         this.§`"1§.alpha = 1;
         removeChild(this.§%!-§);
         this.§%"8§ = false;
         mouseEnabled = true;
         useHandCursor = true;
         mouseChildren = true;
         buttonMode = true;
      }
      
      public function get §[!?§() : Boolean
      {
         return this.§%"8§;
      }
      
      public function §6+§(param1:int) : void
      {
         if(this.§1!q§ && this.§1!q§.parent)
         {
            this.§1!q§.parent.removeChild(this.§1!q§);
         }
         this.§1!q§ = new TextField();
         this.§1!q§.defaultTextFormat = new TextFormat("AngryBirdsPiggies",14,16777215);
         this.§1!q§.filters = [new GlowFilter(0,1,3,3,10)];
         this.§1!q§.autoSize = "center";
         this.§1!q§.text = param1.toString();
         this.§1!q§.x = width / 3;
         this.§1!q§.y = height / 3;
         addChild(this.§1!q§);
         this.§%"8§ = param1 < 1;
         this.§`"1§.alpha = !!this.§%"8§ ? Number(0.5) : Number(1);
      }
   }
}
