package §'7§
{
   import § N§.Sprite;
   import §#e§.§'?§;
   import §&^§.§[!7§;
   
   public class §6!&§ extends §@!F§
   {
       
      
      private var §1l§:String;
      
      private var §,!Q§:Boolean;
      
      private var §;!6§:Number;
      
      private var §"!-§:int;
      
      public function §6!&§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param3))
         {
            super(param1,param2);
            while(true)
            {
               this.§1l§ = param3;
               addr84:
               while(!_loc7_)
               {
               }
            }
         }
         while(true)
         {
            this.§,!Q§ = param4;
            while(!_loc7_)
            {
               this.§;!6§ = param5;
               do
               {
                  this.§"!-§ = param6;
               }
               while(_loc7_ && param3);
               
               if(_loc8_ || param3)
               {
                  return;
               }
            }
            §§goto(addr84);
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'?§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(super.update(param1,param2,param3));
            while(true)
            {
               if(!§§pop())
               {
                  §[!7§.playSound(this.§1l§);
                  §§push(false);
                  break;
               }
               addr24:
               if(!(_loc5_ || param1))
               {
                  continue;
               }
               §§goto(addr51);
            }
            §§goto(addr56);
         }
         while(true)
         {
            §§push(false);
            if(!_loc4_)
            {
               §§goto(addr24);
            }
            addr56:
            return §§pop();
         }
         addr51:
         return §§pop();
      }
      
      override public function clone() : §@!F§
      {
         return new §6!&§(time,duration,this.§1l§,this.§,!Q§,this.§;!6§,this.§"!-§);
      }
   }
}
