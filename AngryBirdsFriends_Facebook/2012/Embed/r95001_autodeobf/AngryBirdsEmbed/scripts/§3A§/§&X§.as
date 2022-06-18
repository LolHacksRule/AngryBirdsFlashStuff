package §3A§
{
   import §1!?§.§7_§;
   import §<k§.Sprite;
   import §[n§.§?+§;
   
   public class §&X§ extends §-§
   {
       
      
      private var §^!<§:String;
      
      private var §@!3§:Boolean;
      
      private var §?e§:Number;
      
      private var §@i§:int;
      
      public function §&X§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§^!<§ = param3;
         this.§@!3§ = param4;
         this.§?e§ = param5;
         this.§@i§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§?+§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §7_§.§4!5§(this.§^!<§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §-§
      {
         return new §&X§(time,duration,this.§^!<§,this.§@!3§,this.§?e§,this.§@i§);
      }
   }
}
