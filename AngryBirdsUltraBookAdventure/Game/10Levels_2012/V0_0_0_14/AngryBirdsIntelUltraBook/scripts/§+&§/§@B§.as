package §+&§
{
   import §!!9§.Texture;
   import §9E§.§;!U§;
   
   public class §@B§
   {
       
      
      private var §[!!§:§;!U§;
      
      private var §87§:Number;
      
      public function §@B§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super();
            while(true)
            {
               this.§[!!§ = new §;!U§(param1);
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            this.§87§ = param2;
            if(_loc3_ || param2)
            {
               if(!(_loc4_ && param2))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get image() : §;!U§
      {
         return this.§[!!§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§87§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§[!!§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§[!!§);
                     addr54:
                     while(true)
                     {
                        §§pop().dispose();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr54);
         }
         §§goto(addr55);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§87§);
            if(_loc3_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§87§ = §§pop();
         }
      }
      
      public function §^;§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§87§ = param1;
         }
      }
      
      public function §4!"§(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[!!§.texture = param1;
         }
      }
   }
}
