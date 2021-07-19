package §=!7§
{
   import § `§.§2w§;
   import §]@§.Sprite;
   import §`!K§.§!!>§;
   
   public class §=!2§ extends §%f§
   {
       
      
      private var §3!Q§:String;
      
      private var §2z§:Boolean;
      
      private var §8K§:Number;
      
      private var §[!Y§:int;
      
      public function §=!2§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param2))
         {
            super(param1,param2);
            while(true)
            {
               this.§3!Q§ = param3;
               loop1:
               while(true)
               {
                  this.§2z§ = param4;
                  while(true)
                  {
                     this.§8K§ = param5;
                     while(_loc8_ || param3)
                     {
                        continue loop1;
                        this.§[!Y§ = param6;
                        if(!_loc7_)
                        {
                           return;
                           addr35:
                        }
                     }
                  }
               }
               if(!(_loc8_ || param1))
               {
                  continue;
               }
               §§goto(addr71);
            }
         }
         §§goto(addr35);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§2w§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(super.update(param1,param2,param3));
            while(true)
            {
               if(!§§pop())
               {
                  §!!>§.playSound(this.§3!Q§);
                  §§push(false);
                  continue;
               }
            }
            return §§pop();
         }
         while(true)
         {
            §§push(false);
            if(_loc4_ || param2)
            {
               break;
            }
            §§goto(addr43);
         }
         return §§pop();
      }
      
      override public function clone() : §%f§
      {
         return new §=!2§(time,duration,this.§3!Q§,this.§2z§,this.§8K§,this.§[!Y§);
      }
   }
}
