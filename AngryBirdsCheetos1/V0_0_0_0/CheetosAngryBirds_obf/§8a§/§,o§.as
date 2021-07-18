package §8a§
{
   import §%!$§.§=m§;
   import §4W§.§!]§;
   import §`a§.Sprite;
   
   public class §,o§ extends §'!U§
   {
       
      
      private var §+!W§:String;
      
      private var §;Y§:Boolean;
      
      private var §=!L§:Number;
      
      private var §<O§:int;
      
      public function §,o§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param1)
         {
            super(param1,param2);
         }
         loop0:
         do
         {
            this.§+!W§ = param3;
            loop1:
            while(true)
            {
               this.§;Y§ = param4;
               loop2:
               do
               {
                  this.§=!L§ = param5;
                  while(!_loc8_)
                  {
                     this.§<O§ = param6;
                     if(!(_loc8_ && param3))
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(!_loc7_);
               
               continue loop0;
            }
         }
         while(!(_loc7_ || this));
         
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!]§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            §§push(super.update(param1,param2,param3));
            while(true)
            {
               if(§§pop())
               {
                  §§push(false);
                  if(_loc4_ || param1)
                  {
                     return §§pop();
                  }
                  continue;
               }
               §=m§.playSound(this.§+!W§);
            }
            return §§pop();
         }
         while(true)
         {
            §§goto(addr48);
         }
      }
      
      override public function clone() : §'!U§
      {
         return new §,o§(time,duration,this.§+!W§,this.§;Y§,this.§=!L§,this.§<O§);
      }
   }
}
