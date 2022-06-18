package §package§
{
   import §<!S§.Event;
   import §<!S§.EventDispatcher;
   
   public class §#"o§ extends EventDispatcher implements §1#;§
   {
       
      
      private var §8$>§:Number;
      
      private var §!!R§:Number;
      
      private var § "I§:Function;
      
      private var §]!=§:Array;
      
      private var §^#3§:int;
      
      public function §#"o§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.reset(param1,param2,param3);
      }
      
      public function reset(param1:Function, param2:Number, param3:Array = null) : §#"o§
      {
         this.§8$>§ = 0;
         this.§!!R§ = Math.max(param2,0.0001);
         this.§ "I§ = param1;
         this.§]!=§ = param3;
         this.§^#3§ = 1;
         return this;
      }
      
      public function §["[§(param1:Number) : void
      {
         var _loc2_:Number = this.§8$>§;
         this.§8$>§ = Math.min(this.§!!R§,this.§8$>§ + param1);
         if(_loc2_ < this.§!!R§ && this.§8$>§ >= this.§!!R§)
         {
            this.§ "I§.apply(null,this.§]!=§);
            if(this.§^#3§ == 0 || this.§^#3§ > 1)
            {
               if(this.§^#3§ > 0)
               {
                  this.§^#3§ = this.§^#3§ - 1;
               }
               this.§8$>§ = 0;
               this.§["[§(_loc2_ + param1 - this.§!!R§);
            }
            else
            {
               §5#^§(Event.§`!5§);
            }
         }
      }
      
      public function get §?#^§() : Boolean
      {
         return this.§^#3§ == 1 && this.§8$>§ >= this.§!!R§;
      }
      
      public function get §9b§() : Number
      {
         return this.§!!R§;
      }
      
      public function get §3!j§() : Number
      {
         return this.§8$>§;
      }
      
      public function get repeatCount() : int
      {
         return this.§^#3§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§^#3§ = param1;
      }
   }
}
