package §<!0§
{
   import §2`§.§%!!§;
   import §3!J§.Sprite;
   import §[!Z§.§>D§;
   
   public class §6e§ extends §=!?§
   {
       
      
      private var §`!A§:String;
      
      private var §-!%§:Boolean;
      
      private var §=A§:Number;
      
      private var §#!d§:int;
      
      public function §6e§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§`!A§ = param3;
               while(true)
               {
                  this.§-!%§ = param4;
                  continue loop0;
                  addr34:
                  if(!(_loc8_ && this))
                  {
                     return;
                     addr51:
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§%!!§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(super.update(param1,param2,param3));
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     addr73:
                     §>D§.§9!q§(this.§`!A§);
                  }
                  §§push(false);
                  break;
               }
               §§push(false);
               if(!_loc5_)
               {
                  break;
               }
               if(_loc5_ || param1)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr73);
      }
      
      override public function clone() : §=!?§
      {
         return new §6e§(time,duration,this.§`!A§,this.§-!%§,this.§=A§,this.§#!d§);
      }
   }
}
