package §4;§
{
   import §'!6§.Sprite;
   import §8m§.§@"M§;
   import §<T§.§`m§;
   
   public class §-W§ extends §^g§
   {
       
      
      private var §@!F§:String;
      
      private var § p§:Boolean;
      
      private var §3N§:Number;
      
      private var §"!8§:int;
      
      public function §-W§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param3)
         {
            super(param1,param2);
            while(true)
            {
               this.§@!F§ = param3;
               loop1:
               while(_loc7_ || param1)
               {
                  loop2:
                  while(true)
                  {
                     this.§ p§ = param4;
                     while(true)
                     {
                        this.§3N§ = param5;
                        while(!(_loc8_ && param1))
                        {
                           this.§"!8§ = param6;
                           if(_loc7_)
                           {
                              if(_loc7_)
                              {
                                 break loop2;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr85);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§`m§) : Boolean
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
                  if(_loc5_ || param2)
                  {
                     addr78:
                     §@"M§.§3"C§(this.§@!F§);
                  }
                  §§push(false);
                  break;
               }
               §§push(false);
               if(!_loc5_)
               {
                  break;
               }
               if(!(_loc4_ && param1))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr78);
      }
      
      override public function clone() : §^g§
      {
         return new §-W§(time,duration,this.§@!F§,this.§ p§,this.§3N§,this.§"!8§);
      }
   }
}
