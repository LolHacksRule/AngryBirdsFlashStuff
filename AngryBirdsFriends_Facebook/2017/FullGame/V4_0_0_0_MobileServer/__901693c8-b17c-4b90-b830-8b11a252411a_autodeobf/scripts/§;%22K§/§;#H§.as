package §;"K§
{
   import §1P§.Event;
   import §1P§.EventDispatcher;
   
   public class §;#H§ extends EventDispatcher implements §5#$§
   {
       
      
      private var §##"§:Number;
      
      private var §0"u§:Number;
      
      private var §]"8§:Function;
      
      private var §]!"§:Array;
      
      private var §1#t§:int;
      
      public function §;#H§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.reset(param1,param2,param3);
      }
      
      public function reset(param1:Function, param2:Number, param3:Array = null) : §;#H§
      {
         this.§##"§ = 0;
         this.§0"u§ = Math.max(param2,0.0001);
         this.§]"8§ = param1;
         this.§]!"§ = param3;
         this.§1#t§ = 1;
         return this;
      }
      
      public function §2!X§(param1:Number) : void
      {
         var _loc2_:Number = this.§##"§;
         this.§##"§ = Math.min(this.§0"u§,this.§##"§ + param1);
         if(_loc2_ < this.§0"u§ && this.§##"§ >= this.§0"u§)
         {
            this.§]"8§.apply(null,this.§]!"§);
            if(this.§1#t§ == 0 || this.§1#t§ > 1)
            {
               if(this.§1#t§ > 0)
               {
                  this.§1#t§ = this.§1#t§ - 1;
               }
               this.§##"§ = 0;
               this.§2!X§(_loc2_ + param1 - this.§0"u§);
            }
            else
            {
               §4#h§(Event.§ #X§);
            }
         }
      }
      
      public function get §6#N§() : Boolean
      {
         return this.§1#t§ == 1 && this.§##"§ >= this.§0"u§;
      }
      
      public function get §9!=§() : Number
      {
         return this.§0"u§;
      }
      
      public function get §5#9§() : Number
      {
         return this.§##"§;
      }
      
      public function get repeatCount() : int
      {
         return this.§1#t§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§1#t§ = param1;
      }
   }
}
