package §_-ya§
{
   import §_-LP§.Sprite;
   import §_-rQ§.§_-Ou§;
   
   public class §_-fd§ extends §_-ga§
   {
       
      
      private var §_-hx§:String;
      
      private var §_-HK§:Boolean;
      
      private var §_-Dv§:Number;
      
      private var §_-3E§:int;
      
      public function §_-fd§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super(param1,param2);
            if(!(_loc8_ && param1))
            {
               this.§_-hx§ = param3;
               addr26:
               if(!(_loc8_ && param1))
               {
                  this.§_-HK§ = param4;
                  if(_loc7_ || param2)
                  {
                     this.§_-Dv§ = param5;
                     if(!_loc7_)
                     {
                     }
                  }
                  §§goto(addr68);
               }
               this.§_-3E§ = param6;
            }
            addr68:
            return;
         }
         §§goto(addr26);
      }
      
      override public function update(param1:Number, param2:Sprite) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(super.update(param1,param2));
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §_-Ou§.playSound(this.§_-hx§);
                     if(_loc4_ && this)
                     {
                     }
                     §§goto(addr54);
                  }
                  §§push(false);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
            }
            §§goto(addr54);
         }
         addr54:
         return false;
      }
      
      override public function clone() : §_-ga§
      {
         return new §_-fd§(time,duration,this.§_-hx§,this.§_-HK§,this.§_-Dv§,this.§_-3E§);
      }
   }
}
