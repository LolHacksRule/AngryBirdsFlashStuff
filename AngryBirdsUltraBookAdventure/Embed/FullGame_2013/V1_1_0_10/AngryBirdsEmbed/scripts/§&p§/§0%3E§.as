package §&p§
{
   import §#X§.§,!F§;
   import §&o§.Sprite;
   import §9K§.§5!H§;
   
   public class §0>§ extends §,K§
   {
       
      
      private var §<@§:String;
      
      private var §'!$§:Boolean;
      
      private var §"!4§:Number;
      
      private var §]&§:int;
      
      public function §0>§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param3))
         {
            super(param1,param2);
            if(!(_loc7_ && param1))
            {
               this.§<@§ = param3;
               if(_loc8_)
               {
                  addr60:
                  this.§'!$§ = param4;
                  if(_loc8_ || this)
                  {
                  }
                  §§goto(addr75);
               }
               this.§"!4§ = param5;
               if(_loc7_)
               {
               }
               §§goto(addr75);
            }
            addr75:
            this.§]&§ = param6;
            return;
         }
         §§goto(addr60);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5!H§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(super.update(param1,param2,param3));
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(!(_loc5_ && this))
                  {
                     §,!F§.§;v§(this.§<@§);
                     if(_loc4_ || this)
                     {
                        addr54:
                        §§push(false);
                        if(_loc4_)
                        {
                           return §§pop();
                        }
                        §§goto(addr59);
                     }
                     §§goto(addr59);
                  }
               }
               §§push(false);
            }
            addr59:
            return §§pop();
         }
         §§goto(addr54);
      }
      
      override public function clone() : §,K§
      {
         return new §0>§(time,duration,this.§<@§,this.§'!$§,this.§"!4§,this.§]&§);
      }
   }
}
