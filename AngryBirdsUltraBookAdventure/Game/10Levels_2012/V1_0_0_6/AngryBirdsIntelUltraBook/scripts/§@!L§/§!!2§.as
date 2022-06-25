package §@!L§
{
   import §5!c§.§9'§;
   import §7!B§.Sprite;
   import §^!Y§.§'R§;
   
   public class §!!2§ extends §9N§
   {
       
      
      private var §in §:String;
      
      private var §2!J§:Boolean;
      
      private var §7m§:Number;
      
      private var §'!n§:int;
      
      public function §!!2§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            super(param1,param2);
         }
         loop0:
         while(true)
         {
            this.§in § = param3;
            while(true)
            {
               this.§2!J§ = param4;
               continue loop0;
               addr71:
               if(!(_loc8_ && this))
               {
                  this.§'!n§ = param6;
                  addr78:
                  if(!(_loc8_ && param1))
                  {
                     return;
                     addr54:
                  }
                  while(_loc7_ || this)
                  {
                     §§goto(addr71);
                     §§goto(addr78);
                  }
                  continue loop0;
               }
            }
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'R§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(super.update(param1,param2,param3));
            while(true)
            {
               if(§§pop())
               {
                  §§push(false);
                  if(!_loc4_)
                  {
                     break;
                  }
                  continue;
               }
               if(_loc4_ || param1)
               {
                  §9'§.playSound(this.§in §);
               }
            }
            §§goto(addr55);
         }
         addr55:
         false;
         return §§pop();
      }
      
      override public function clone() : §9N§
      {
         return new §!!2§(time,duration,this.§in §,this.§2!J§,this.§7m§,this.§'!n§);
      }
   }
}
