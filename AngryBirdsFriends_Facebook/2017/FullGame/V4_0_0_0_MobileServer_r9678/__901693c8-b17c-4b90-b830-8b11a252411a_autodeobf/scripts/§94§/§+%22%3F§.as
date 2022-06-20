package §94§
{
   import § $%§.§ $7§;
   import §&"J§.§<!u§;
   import §&$!§.§+#!§;
   import §6!0§.§ "8§;
   import §<!w§.§0"H§;
   import §>!I§.§@!q§;
   import §>@§.§>x§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §+"?§ extends §>x§
   {
      
      private static const § !2§:Number = 0.2;
      
      private static const §&#P§:Number = 60;
       
      
      private var §@#[§:Boolean = false;
      
      protected var §=H§:Number = -1;
      
      protected var §!!W§:Number = 0;
      
      private var §<"z§:Boolean = false;
      
      private var §;#q§:Number = 60;
      
      public function §+"?§(param1:§+#!§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function initLoadManager() : void
      {
         §@!q§.§ "D§.init(§ $7§.§<J§(),§-x§,§6#;§,null,null);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc3_:TextField = null;
         super.setLoadingScreen(param1);
         this.§4"f§(0);
         var _loc2_:MovieClip = §]"[§.getChildByName("Tip") as MovieClip;
         if(_loc2_)
         {
            _loc3_ = TextField(_loc2_.getChildByName("tipTF"));
            if(_loc3_)
            {
               _loc3_.text = §0"H§.§ "D§.§]!F§();
            }
         }
      }
      
      private function randRange(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§=H§ == -1)
         {
            this.§=H§ = new Date().time;
         }
         if(!this.§@#[§)
         {
            super.update(param1);
         }
         var _loc2_:Number = this.§=$1§();
         this.§4"f§(_loc2_);
         if(_loc2_ == 1 && this.§@#[§)
         {
            § "8§.§ "§("onFlashLoadComplete");
            §5"p§(§[#,§);
         }
      }
      
      override protected function setLoadingReady() : void
      {
         this.§@#[§ = true;
         this.§!!W§ = 1;
      }
      
      private function §=$1§() : Number
      {
         var _loc1_:Number = !!§<!u§.§"$1§ ? Number(0) : Number(1);
         var _loc2_:Number = this.§^!5§(_loc1_ == 1 && this.§!!W§ == 1);
         if(this.§!!W§ == 1 && _loc1_ == 1 && _loc2_ == 1)
         {
            return 1;
         }
         return this.§!!W§ * 0.7 + _loc1_ * 0.2 + _loc2_ * 0.1;
      }
      
      private function §^!5§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§;#q§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§=H§) / 1000,this.§;#q§) / this.§;#q§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§!!W§ = param1;
      }
      
      private function §4"f§(param1:Number) : void
      {
         (§]"[§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
      }
   }
}
