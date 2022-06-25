package §_-n§
{
   import §_-4g§.§_-pX§;
   import §_-8d§.§_-0FF§;
   import §_-uY§.Sprite;
   
   public class §_-9l§ extends §_-tC§
   {
       
      
      private var §_-5o§:String;
      
      private var § use§:Boolean;
      
      private var §_-PN§:Number;
      
      private var §_-xX§:int;
      
      public function §_-9l§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super(param1,param2);
            while(true)
            {
               this.§_-5o§ = param3;
            }
            addr85:
         }
         do
         {
            this.§ use§ = param4;
            loop2:
            do
            {
               this.§_-PN§ = param5;
               while(_loc7_)
               {
                  this.§_-xX§ = param6;
                  if(_loc7_ || this)
                  {
                     continue loop2;
                  }
               }
               §§goto(addr85);
            }
            while(_loc8_);
            
         }
         while(!(_loc7_ || param1));
         
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-0FF§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §§push(super.update(param1,param2,param3));
            while(true)
            {
               if(§§pop())
               {
                  §§push(false);
                  if(_loc5_ && param1)
                  {
                     break;
                  }
                  continue;
               }
            }
            §§goto(addr65);
         }
         §_-pX§.playSound(this.§_-5o§);
         addr65:
         false;
         return §§pop();
      }
      
      override public function clone() : §_-tC§
      {
         return new §_-9l§(time,duration,this.§_-5o§,this.§ use§,this.§_-PN§,this.§_-xX§);
      }
   }
}
