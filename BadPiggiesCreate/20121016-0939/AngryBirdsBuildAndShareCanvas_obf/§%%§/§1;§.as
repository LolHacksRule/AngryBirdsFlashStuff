package §%%§
{
   import §&"5§.§7!P§;
   import §-!n§.§5!U§;
   import §default§.Sprite;
   
   public class §1;§ extends §#K§
   {
       
      
      private var § ;§:String;
      
      private var §=!]§:Boolean;
      
      private var §#!u§:Number;
      
      private var §?!7§:int;
      
      public function §1;§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param2)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§ ;§ = param3;
               addr90:
               while(true)
               {
                  this.§=!]§ = param4;
                  continue loop0;
               }
            }
         }
         §§goto(addr63);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7!P§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            §§push(super.update(param1,param2,param3));
            while(true)
            {
               if(!§§pop())
               {
                  §5!U§.playSound(this.§ ;§);
                  §§push(false);
                  continue;
               }
            }
            return §§pop();
         }
         while(true)
         {
            §§push(false);
            if(!_loc4_)
            {
               break;
            }
            §§goto(addr44);
         }
         return §§pop();
      }
      
      override public function clone() : §#K§
      {
         return new §1;§(time,duration,this.§ ;§,this.§=!]§,this.§#!u§,this.§?!7§);
      }
   }
}
