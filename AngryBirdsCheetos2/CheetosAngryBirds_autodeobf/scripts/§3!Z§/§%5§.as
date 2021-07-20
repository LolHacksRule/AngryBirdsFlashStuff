package §3!Z§
{
   import §-!Q§.§,!7§;
   import §9t§.§=!>§;
   import §^a§.Sprite;
   
   public class §%5§ extends §!'§
   {
       
      
      private var §>6§:String;
      
      private var §,q§:Boolean;
      
      private var §+!#§:Number;
      
      private var §1!"§:int;
      
      public function §%5§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§>6§ = param3;
               while(true)
               {
                  this.§,q§ = param4;
                  while(true)
                  {
                     this.§+!#§ = param5;
                     addr52:
                     while(!_loc7_)
                     {
                        if(!_loc7_)
                        {
                           continue;
                        }
                        continue loop0;
                     }
                  }
                  addr30:
                  if(!(_loc7_ && param3))
                  {
                     return;
                     addr47:
                  }
               }
            }
         }
         while(true)
         {
            this.§1!"§ = param6;
            if(!_loc7_)
            {
               §§goto(addr30);
            }
            §§goto(addr52);
         }
         §§goto(addr47);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§=!>§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            §§push(super.update(param1,param2,param3));
            while(true)
            {
               if(!§§pop())
               {
                  if(!(_loc4_ && param1))
                  {
                     addr88:
                     §,!7§.playSound(this.§>6§);
                  }
                  §§push(false);
                  break;
               }
               §§push(false);
               if(!(_loc5_ || this))
               {
                  break;
               }
               if(_loc5_ || this)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr88);
      }
      
      override public function clone() : §!'§
      {
         return new §%5§(time,duration,this.§>6§,this.§,q§,this.§+!#§,this.§1!"§);
      }
   }
}
