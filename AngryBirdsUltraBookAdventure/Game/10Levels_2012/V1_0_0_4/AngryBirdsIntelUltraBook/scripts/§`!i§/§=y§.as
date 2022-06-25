package §`!i§
{
   import §"R§.§ !Q§;
   import §'!9§.Sprite;
   import §-w§.§,Q§;
   
   public class §=y§ extends §8d§
   {
       
      
      private var §"!D§:String;
      
      private var §"P§:Boolean;
      
      private var §!!Y§:Number;
      
      private var §`?§:int;
      
      public function §=y§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super(param1,param2);
         }
         loop0:
         do
         {
            this.§"!D§ = param3;
            loop1:
            while(true)
            {
               this.§"P§ = param4;
               do
               {
                  this.§!!Y§ = param5;
                  continue loop1;
               }
               while(_loc7_);
               
               continue loop0;
            }
         }
         while(!(_loc8_ || this));
         
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,Q§) : Boolean
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
                  if(_loc4_)
                  {
                     addr67:
                     § !Q§.playSound(this.§"!D§);
                  }
                  §§push(false);
                  break;
               }
               §§push(false);
               if(_loc5_)
               {
                  break;
               }
               if(_loc4_ || param3)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr67);
      }
      
      override public function clone() : §8d§
      {
         return new §=y§(time,duration,this.§"!D§,this.§"P§,this.§!!Y§,this.§`?§);
      }
   }
}
