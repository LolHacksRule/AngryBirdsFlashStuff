package §9!z§
{
   import §0!d§.§7!a§;
   import §3;§.§#!C§;
   import §>"2§.§<y§;
   import §>"2§.§^F§;
   import com.rovio.assets.§5!+§;
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
   
   public class §5"!§ extends Sprite
   {
      
      private static const §^!>§:int = 20;
       
      
      private var §2!$§:Sprite;
      
      private var §]!Q§:Sprite;
      
      private var §6!%§:Boolean = false;
      
      private var §+&§:§>!w§;
      
      private var §>c§:int;
      
      private var §`!,§:int;
      
      private var §?"$§:Number;
      
      private var §9!e§:Boolean = false;
      
      private var §0!`§:Boolean = false;
      
      private var §#[§:Number = 1;
      
      private var §-3§:§^F§;
      
      private var §`!^§:MovieClip;
      
      private var §=!5§:DisplayObject;
      
      private var §,!U§:TextField;
      
      private var §'!l§:String;
      
      public function §5"!§(param1:String, param2:§7!a§, param3:DisplayObject, param4:Boolean = false, param5:Number = 1)
      {
         this.§+&§ = new §>!w§();
         super();
         this.§?"$§ = param5;
         this.§]!Q§ = new Sprite();
         this.§]!Q§.addChild(param3);
         this.§'!l§ = param1;
         param3.x = -param3.width / 2;
         param3.y = -param3.height / 2;
         this.§`!^§ = new MovieClip();
         this.§2!$§ = new Sprite();
         this.§`!^§.addChild(this.§]!Q§);
         this.§`!^§.addChild(this.§2!$§);
         this.§>c§ = this.§]!Q§.width;
         this.§`!,§ = this.§]!Q§.height;
         visible = true;
         this.§`!^§.buttonMode = true;
         this.§`!^§.useHandCursor = true;
         this.§`!^§.addEventListener(MouseEvent.ROLL_OVER,this.§]p§);
         this.§`!^§.addEventListener(MouseEvent.ROLL_OUT,this.§1J§);
         this.§`!^§.addEventListener(Event.MOUSE_LEAVE,this.§1J§);
         addChild(this.§`!^§);
         param2.mClip.addChild(this);
      }
      
      private function §1J§(param1:MouseEvent) : void
      {
         if(this.§-3§ != null)
         {
            this.§-3§.stop();
         }
         var _loc2_:Number = this.§#[§ * this.§?"$§;
         this.§-3§ = §<y§.§,l§.§]!C§(this.§]!Q§,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },null,0.05);
         this.§-3§.play();
         if(!this.§6!%§)
         {
            this.§ U§();
         }
      }
      
      private function §]p§(param1:MouseEvent) : void
      {
         if(this.§-3§ != null)
         {
            this.§-3§.stop();
         }
         var _loc2_:Number = 1;
         if(this.§#[§ * this.§?"$§ == 1)
         {
            _loc2_ += 0.05;
         }
         this.§-3§ = §<y§.§,l§.§]!C§(this.§]!Q§,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },null,0.05);
         this.§-3§.play();
         parent.setChildIndex(this,parent.numChildren - 1);
         this.§9!5§();
      }
      
      public function §;§() : void
      {
         this.§6!%§ = true;
         this.§9!5§();
         dispatchEvent(new §#!C§(§#!C§.§@1§));
      }
      
      private function §9!5§() : void
      {
         this.§+&§.§&!S§(this.§]!Q§.parent);
      }
      
      public function § U§() : void
      {
         this.§6!%§ = false;
         this.§+&§.§8z§(this.§]!Q§.parent);
      }
      
      public function getItemName() : String
      {
         return this.§'!l§;
      }
      
      public function §"!h§() : Bitmap
      {
         return this.§]!Q§.getChildAt(0) as Bitmap;
      }
      
      public function §'g§() : BitmapData
      {
         var _loc1_:Array = this.§]!Q§.filters;
         this.§]!Q§.filters = [];
         var _loc2_:BitmapData = new BitmapData(this.§]!Q§.width / this.§]!Q§.scaleX,this.§]!Q§.height / this.§]!Q§.scaleY,true,0);
         _loc2_.draw(this.§]!Q§);
         this.§]!Q§.filters = _loc1_;
         return _loc2_;
      }
      
      public function setSize(param1:int, param2:int) : void
      {
         this.§2!$§.graphics.clear();
         this.§2!$§.graphics.beginFill(16711680,0);
         this.§2!$§.graphics.drawRect(0,0,param1,param2);
         this.§2!$§.graphics.endFill();
         this.§]!Q§.x = this.§2!$§.width / 2;
         this.§]!Q§.y = this.§2!$§.height / 2;
      }
      
      public function §0!&§(param1:Number) : void
      {
         this.§#[§ = param1;
         this.§]!Q§.scaleX = this.§#[§ * this.§?"$§;
         this.§]!Q§.scaleY = this.§#[§ * this.§?"$§;
      }
      
      public function §'! §() : int
      {
         return this.§]!Q§.width;
      }
      
      public function §^i§() : int
      {
         return this.§]!Q§.height;
      }
      
      public function get §1-§() : int
      {
         return this.§>c§ * this.§?"$§;
      }
      
      public function get §3!T§() : int
      {
         return this.§`!,§ * this.§?"$§;
      }
      
      public function lock() : void
      {
         if(this.§2r§)
         {
            return;
         }
         if(this.§=!5§ && this.§=!5§.parent)
         {
            this.§=!5§.parent.removeChild(this.§=!5§);
         }
         this.§`!^§.removeEventListener(MouseEvent.ROLL_OVER,this.§]p§);
         this.§`!^§.removeEventListener(MouseEvent.ROLL_OUT,this.§1J§);
         this.§`!^§.removeEventListener(Event.MOUSE_LEAVE,this.§1J§);
         this.§]!Q§.alpha = 0.5;
         var _loc1_:Class = §5!+§.§,]§("Level_icon");
         this.§=!5§ = new _loc1_();
         this.§=!5§.x = width / 3;
         this.§=!5§.y = height / 3;
         this.§=!5§.width = §^!>§;
         this.§=!5§.scaleY = this.§=!5§.scaleX;
         addChild(this.§=!5§);
         this.§9!e§ = true;
      }
      
      public function unlock() : void
      {
         if(!this.§2r§)
         {
            return;
         }
         this.§`!^§.addEventListener(MouseEvent.ROLL_OVER,this.§]p§);
         this.§`!^§.addEventListener(MouseEvent.ROLL_OUT,this.§1J§);
         this.§`!^§.addEventListener(Event.MOUSE_LEAVE,this.§1J§);
         this.§]!Q§.alpha = 1;
         removeChild(this.§=!5§);
         this.§9!e§ = false;
         mouseEnabled = true;
         useHandCursor = true;
         mouseChildren = true;
         buttonMode = true;
      }
      
      public function get §2r§() : Boolean
      {
         return this.§9!e§;
      }
      
      public function §0!7§(param1:int) : void
      {
         if(this.§,!U§ && this.§,!U§.parent)
         {
            this.§,!U§.parent.removeChild(this.§,!U§);
         }
         this.§,!U§ = new TextField();
         this.§,!U§.defaultTextFormat = new TextFormat("AngryBirdsPiggies",14,16777215);
         this.§,!U§.filters = [new GlowFilter(0,1,3,3,10)];
         this.§,!U§.autoSize = "center";
         this.§,!U§.text = param1.toString();
         this.§,!U§.x = width / 3;
         this.§,!U§.y = height / 3;
         addChild(this.§,!U§);
         this.§9!e§ = param1 < 1;
         this.§]!Q§.alpha = !!this.§9!e§ ? Number(0.5) : Number(1);
      }
   }
}
