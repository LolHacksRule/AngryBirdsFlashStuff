package §9!7§
{
   import §#h§.§ !H§;
   import §,_§.Sprite;
   import §5`§.§?y§;
   
   public class § y§ extends §`E§
   {
       
      
      private var §<K§:String;
      
      private var §"!A§:Boolean;
      
      private var §&x§:Number;
      
      private var §6,§:int;
      
      public function § y§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§<K§ = param3;
         this.§"!A§ = param4;
         this.§&x§ = param5;
         this.§6,§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§?y§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            § !H§.§ !%§(this.§<K§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §`E§
      {
         return new § y§(time,duration,this.§<K§,this.§"!A§,this.§&x§,this.§6,§);
      }
   }
}
