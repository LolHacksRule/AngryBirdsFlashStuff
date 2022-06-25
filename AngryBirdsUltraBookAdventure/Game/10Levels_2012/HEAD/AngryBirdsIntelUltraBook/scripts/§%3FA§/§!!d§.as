package §?A§
{
   import §'_§.Texture;
   import §1!&§.§&p§;
   
   public class §!!d§
   {
       
      
      private var §=@§:§&p§;
      
      private var §;![§:Number;
      
      public function §!!d§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§=@§ = new §&p§(param1);
               §§goto(addr58);
            }
         }
         addr58:
         while(true)
         {
            this.§;![§ = param2;
            if(!_loc4_)
            {
               if(!(_loc4_ && _loc3_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get image() : §&p§
      {
         return this.§=@§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§;![§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§=@§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr71:
                     this.§=@§.dispose();
                     do
                     {
                        this.§=@§ = null;
                     }
                     while(_loc1_ && this);
                     
                     addr73:
                  }
                  §§goto(addr73);
               }
               return;
            }
         }
         §§goto(addr71);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            §§push(this.§;![§);
            if(_loc2_ || param1)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§;![§ = §§pop();
         }
      }
      
      public function §+!"§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;![§ = param1;
         }
      }
      
      public function §>!E§(param1:Texture) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=@§.texture = param1;
         }
      }
   }
}
