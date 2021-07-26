package §]§
{
   import § #+§.§&#F§;
   import §#$?§.§7!b§;
   import §&?§.§5"f§;
   import §+`§.§%"q§;
   import §,#,§.§%"#§;
   import §4S§.§<#j§;
   import §[c§.§]"a§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §#$4§ extends §]"a§
   {
      
      private static const §+#b§:Number = 0.2;
      
      private static const §"P§:Number = 60;
       
      
      private var §9#7§:Boolean = false;
      
      protected var § $#§:Number = -1;
      
      protected var §,#h§:Number = 0;
      
      private var §9N§:Boolean = false;
      
      private var §4#b§:Number = 60;
      
      public function §#$4§(param1:§%"q§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function initLoadManager() : void
      {
         §5"f§.§+!,§.init(§<#j§.§<!b§(),§[L§,§@"_§,null,null);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc3_:TextField = null;
         super.setLoadingScreen(param1);
         this.§>#Z§(0);
         var _loc2_:MovieClip = §'a§.getChildByName("Tip") as MovieClip;
         if(_loc2_)
         {
            _loc3_ = TextField(_loc2_.getChildByName("tipTF"));
            if(_loc3_)
            {
               _loc3_.text = §&#F§.§+!,§.§]!Q§();
            }
         }
      }
      
      private function randRange(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§ $#§ == -1)
         {
            this.§ $#§ = new Date().time;
         }
         if(!this.§9#7§)
         {
            super.update(param1);
         }
         var _loc2_:Number = this.§'"I§();
         this.§>#Z§(_loc2_);
         if(_loc2_ == 1 && this.§9#7§)
         {
            §7!b§.§7@§("onFlashLoadComplete");
            §3#§(§?!T§);
         }
      }
      
      override protected function setLoadingReady() : void
      {
         this.§9#7§ = true;
         this.§,#h§ = 1;
      }
      
      private function §'"I§() : Number
      {
         var _loc1_:Number = !!§%"#§.§9$$§ ? Number(0) : Number(1);
         var _loc2_:Number = this.§[#&§(_loc1_ == 1 && this.§,#h§ == 1);
         if(this.§,#h§ == 1 && _loc1_ == 1 && _loc2_ == 1)
         {
            return 1;
         }
         return this.§,#h§ * 0.7 + _loc1_ * 0.2 + _loc2_ * 0.1;
      }
      
      private function §[#&§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§4#b§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§ $#§) / 1000,this.§4#b§) / this.§4#b§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§,#h§ = param1;
      }
      
      private function §>#Z§(param1:Number) : void
      {
         (§'a§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
      }
   }
}
