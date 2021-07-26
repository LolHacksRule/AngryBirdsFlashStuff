package §##x§
{
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §"#;§ extends §2E§
   {
      
      public static const §^!z§:Number = 1000 / 24;
       
      
      protected var §^";§:Number;
      
      protected var §'"-§:int;
      
      protected var §`!M§:int;
      
      protected var §2$2§:int;
      
      protected var §+#P§:String = "best";
      
      public function §"#;§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         super(param1,param2);
         this.§`!M§ = 0;
         this.§2$2§ = param1.length;
         this.§^";§ = param3;
         this.§'"-§ = 0;
      }
      
      protected function §<#<§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:MovieClip = §="f§[param1];
         if(§2$3§ && !§^"§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §]" §(_loc2_,§2$3§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §5o§.loop && !§2$3§)
            {
               _loc5_ = §5o§.defaultStartLabel != "" ? §5o§.defaultStartLabel : "";
               _loc6_ = §5o§.startLabel != "" ? §5o§.startLabel : _loc5_;
               if(!§^5§(_loc2_,_loc6_))
               {
                  _loc6_ = _loc5_;
               }
               if(_loc6_ != "")
               {
                  _loc2_.gotoAndStop(_loc6_);
               }
               else
               {
                  _loc2_.gotoAndStop(1);
               }
            }
            else
            {
               §="f§.splice(param1,1);
               ++this.§`!M§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §="f§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§<#<§(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§'"-§ += param1;
         while(this.§'"-§ >= this.§^";§)
         {
            this.runAnimations();
            this.§'"-§ -= this.§^";§;
            if(this.§`!M§ >= this.§2$2§)
            {
               if(stage && §5o§.stageQuality != "")
               {
                  stage.quality = this.§+#P§;
               }
               §?G§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§7$<§) : void
      {
         super.start(param1);
         this.§2$2§ = §="f§.length;
         this.§`!M§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§+#P§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
      }
   }
}
