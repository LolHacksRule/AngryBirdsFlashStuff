package §]!6§
{
   import §4!9§.§6"§;
   import §>!-§.UIComponentRovio;
   import flash.display.MovieClip;
   
   public class UIRepeaterTabRovio extends UIContainerRovio
   {
       
      
      public var §3!&§:int;
      
      public var §37§:int;
      
      public var §'t§:int;
      
      public var §]!=§:int;
      
      public var §4!j§:Number;
      
      public var §78§:Number;
      
      public var §5!I§:Number;
      
      public var §@W§:Number;
      
      public var § set§:Number;
      
      public function UIRepeaterTabRovio(param1:XML, param2:UIContainerRovio, param3:§6"§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §@a§ = true;
      }
      
      public function §`I§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§'t§ = param6;
         this.§]!=§ = param1 * this.§'t§;
         this.§ set§ = param7;
         this.§5!I§ = param2;
         this.§@W§ = param3;
         this.§4!j§ = param4;
         this.§78§ = param5;
         if(false)
         {
            this.§37§ = Math.max(1,Math.ceil(§4!W§.length / this.§]!=§));
         }
         else
         {
            this.§37§ = 1;
            if(§4!W§.length > this.§]!=§)
            {
               this.§37§ += Math.ceil((§4!W§.length - this.§]!=§) / (this.§'t§ * this.§ set§));
            }
         }
         this.§3!Q§(0);
      }
      
      public function §3!Q§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§37§)
         {
            param1 = this.§37§ - 1;
         }
         this.§3!&§ = param1;
         var _loc2_:int = this.§3!&§ * this.§ set§ * this.§'t§;
         var _loc3_:int = _loc2_ + this.§]!=§;
         var _loc4_:int = 0;
         while(_loc4_ < §4!W§.length)
         {
            (§4!W§[_loc4_] as UIComponentRovio).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§5!I§ - this.§3!&§ * this.§4!j§;
         y = this.§@W§ - this.§3!&§ * this.§78§;
      }
   }
}
