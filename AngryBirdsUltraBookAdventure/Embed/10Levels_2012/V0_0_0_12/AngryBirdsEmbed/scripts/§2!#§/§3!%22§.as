package §2!#§
{
   import §-!0§.§'!3§;
   import §?!?§.§3!E§;
   import §?^§.Sprite;
   
   public class §3!"§ extends §,1§
   {
       
      
      private var §9f§:String;
      
      private var §@G§:Boolean;
      
      private var §]4§:Number;
      
      private var §6u§:int;
      
      public function §3!"§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            super(param1,param2);
            if(_loc7_ || param3)
            {
               this.§9f§ = param3;
               if(_loc7_)
               {
                  addr59:
                  this.§@G§ = param4;
                  if(!_loc7_)
                  {
                  }
                  §§goto(addr69);
               }
               this.§]4§ = param5;
               if(!_loc8_)
               {
                  §§goto(addr69);
               }
               addr69:
               this.§6u§ = param6;
               return;
            }
         }
         §§goto(addr59);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'!3§) : Boolean
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
                     §3!E§.§<!,§(this.§9f§);
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
      
      override public function clone() : §,1§
      {
         return new §3!"§(time,duration,this.§9f§,this.§@G§,this.§]4§,this.§6u§);
      }
   }
}
