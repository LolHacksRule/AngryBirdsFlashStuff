package §?_§
{
   import §3"#§.§<!O§;
   import §4&§.§,C§;
   import §7!8§.Sprite;
   
   public class §%J§ extends §3'§
   {
       
      
      private var §;!7§:String;
      
      private var §%"-§:Boolean;
      
      private var §8!W§:Number;
      
      private var §?!q§:int;
      
      public function §%J§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super(param1,param2);
         }
         loop0:
         while(true)
         {
            this.§;!7§ = param3;
            while(true)
            {
               this.§%"-§ = param4;
               loop2:
               while(!_loc7_)
               {
                  this.§8!W§ = param5;
                  while(!_loc7_)
                  {
                     this.§?!q§ = param6;
                     if(_loc8_ || param1)
                     {
                        if(!_loc7_)
                        {
                           return;
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,C§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §§push(super.update(param1,param2,param3));
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     §<!O§.playSound(this.§;!7§);
                  }
                  §§push(false);
                  continue;
               }
            }
            return §§pop();
         }
         while(true)
         {
            §§push(false);
            if(_loc4_ || param3)
            {
               break;
            }
            §§goto(addr48);
         }
         return §§pop();
      }
      
      override public function clone() : §3'§
      {
         return new §%J§(time,duration,this.§;!7§,this.§%"-§,this.§8!W§,this.§?!q§);
      }
   }
}
