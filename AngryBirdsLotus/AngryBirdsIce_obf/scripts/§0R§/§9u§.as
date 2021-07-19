package §0R§
{
   import §1n§.§5#§;
   import §3O§.§@6§;
   import §^V§.Sprite;
   
   public class §9u§ extends §6! §
   {
       
      
      private var §-!E§:String;
      
      private var §`G§:Boolean;
      
      private var §^^§:Number;
      
      private var §^h§:int;
      
      public function §9u§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param2))
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§-!E§ = param3;
               while(true)
               {
                  this.§`G§ = param4;
                  continue loop0;
                  addr66:
                  while(_loc7_ || param1)
                  {
                     this.§^h§ = param6;
                     if(_loc7_)
                     {
                        addr44:
                        if(_loc7_ || param1)
                        {
                           return;
                           addr51:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§^^§ = param5;
            §§goto(addr66);
         }
         §§goto(addr51);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5#§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(super.update(param1,param2,param3));
            while(true)
            {
               if(§§pop())
               {
                  §§push(false);
                  if(_loc4_)
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
            §@6§.playSound(this.§-!E§);
            §§goto(addr48);
         }
      }
      
      override public function clone() : §6! §
      {
         return new §9u§(time,duration,this.§-!E§,this.§`G§,this.§^^§,this.§^h§);
      }
   }
}
