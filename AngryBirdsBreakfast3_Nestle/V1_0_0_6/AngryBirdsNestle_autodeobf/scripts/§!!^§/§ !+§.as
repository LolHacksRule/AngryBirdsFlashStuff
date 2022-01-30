package §!!^§
{
   import §,!q§.Sprite;
   import §-!b§.§[E§;
   import §@!6§.§3!5§;
   
   public class § !+§ extends §,!@§
   {
       
      
      private var §50§:String;
      
      private var §2!J§:Boolean;
      
      private var §&!<§:Number;
      
      private var §8!K§:int;
      
      public function § !+§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§50§ = param3;
         this.§2!J§ = param4;
         this.§&!<§ = param5;
         this.§8!K§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§[E§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §3!5§.§<!9§(this.§50§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §,!@§
      {
         return new § !+§(time,duration,this.§50§,this.§2!J§,this.§&!<§,this.§8!K§);
      }
   }
}
