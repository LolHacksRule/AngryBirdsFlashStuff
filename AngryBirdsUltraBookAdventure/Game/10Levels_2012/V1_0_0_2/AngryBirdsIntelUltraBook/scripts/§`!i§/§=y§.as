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
         if(_loc8_)
         {
            super(param1,param2);
            loop0:
            do
            {
               this.§"!D§ = param3;
               while(true)
               {
                  this.§"P§ = param4;
                  while(!(_loc7_ && param2))
                  {
                     this.§!!Y§ = param5;
                     do
                     {
                        this.§`?§ = param6;
                     }
                     while(_loc7_);
                     
                     if(_loc8_ || param3)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc7_);
            
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,Q§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(super.update(param1,param2,param3));
            while(true)
            {
               if(§§pop())
               {
                  §§push(false);
                  if(!(_loc4_ && this))
                  {
                     return §§pop();
                  }
                  continue;
               }
            }
            return §§pop();
         }
         while(true)
         {
            § !Q§.playSound(this.§"!D§);
            §§goto(addr54);
         }
      }
      
      override public function clone() : §8d§
      {
         return new §=y§(time,duration,this.§"!D§,this.§"P§,this.§!!Y§,this.§`?§);
      }
   }
}
