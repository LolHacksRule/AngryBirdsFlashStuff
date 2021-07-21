package §9!$§
{
   import §-!`§.Sprite;
   import §1?§.§+!§;
   import §=U§.§3p§;
   
   public class §+!-§ extends §&!W§
   {
       
      
      private var §@C§:String;
      
      private var §2!u§:Boolean;
      
      private var §3A§:Number;
      
      private var §<!n§:int;
      
      public function §+!-§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param3))
         {
            super(param1,param2);
            if(!_loc7_)
            {
               this.§@C§ = param3;
               if(!_loc7_)
               {
                  this.§2!u§ = param4;
                  if(_loc8_)
                  {
                     this.§3A§ = param5;
                     if(_loc8_ || param2)
                     {
                        addr70:
                        this.§<!n§ = param6;
                     }
                  }
                  §§goto(addr70);
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3p§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            §§push(super.update(param1,param2,param3));
            if(_loc5_ || param1)
            {
               if(!§§pop())
               {
                  if(_loc5_ || this)
                  {
                     §+!§.§4c§(this.§@C§);
                     if(!_loc4_)
                     {
                        addr70:
                        §§push(false);
                        if(!_loc4_)
                        {
                           return §§pop();
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr70);
               }
               §§push(false);
            }
            addr75:
            return §§pop();
         }
         §§goto(addr70);
      }
      
      override public function clone() : §&!W§
      {
         return new §+!-§(time,duration,this.§@C§,this.§2!u§,this.§3A§,this.§<!n§);
      }
   }
}
