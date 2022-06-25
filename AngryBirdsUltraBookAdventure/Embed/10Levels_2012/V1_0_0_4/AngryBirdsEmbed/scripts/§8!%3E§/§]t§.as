package §8!>§
{
   import §'k§.§ >§;
   import §9W§.Sprite;
   import §@D§.§6I§;
   
   public class §]t§ extends §1^§
   {
       
      
      private var §9Z§:String;
      
      private var §!v§:Boolean;
      
      private var each:Number;
      
      private var §<!2§:int;
      
      public function §]t§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            super(param1,param2);
            if(_loc7_ || param3)
            {
               this.§9Z§ = param3;
               if(_loc7_)
               {
                  addr59:
                  this.§!v§ = param4;
                  if(!_loc7_)
                  {
                  }
                  §§goto(addr69);
               }
               this.each = param5;
               if(!_loc8_)
               {
                  §§goto(addr69);
               }
               addr69:
               this.§<!2§ = param6;
               return;
            }
         }
         §§goto(addr59);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§ >§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §§push(super.update(param1,param2,param3));
            if(_loc4_ || param2)
            {
               if(!§§pop())
               {
                  if(!(_loc5_ && param3))
                  {
                     §6I§.§ ;§(this.§9Z§);
                     if(_loc4_)
                     {
                        addr69:
                        §§push(false);
                        if(!_loc5_)
                        {
                           §§goto(addr72);
                        }
                     }
                     else
                     {
                        addr73:
                        §§push(false);
                     }
                     return §§pop();
                  }
                  §§goto(addr69);
               }
               §§goto(addr73);
            }
            addr72:
            return §§pop();
         }
         §§goto(addr73);
      }
      
      override public function clone() : §1^§
      {
         return new §]t§(time,duration,this.§9Z§,this.§!v§,this.each,this.§<!2§);
      }
   }
}
