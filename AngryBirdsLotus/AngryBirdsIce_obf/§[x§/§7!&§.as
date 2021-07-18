package §[x§
{
   import §[P§.Texture;
   import §^V§.§1!,§;
   
   public class §7!&§
   {
       
      
      private var §6-§:§1!,§;
      
      private var §-!8§:Number;
      
      public function §7!&§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§6-§ = new §1!,§(param1);
               while(_loc3_)
               {
                  this.§-!8§ = param2;
                  if(_loc3_)
                  {
                     return;
                     addr39:
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      public function get image() : §1!,§
      {
         return this.§6-§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§-!8§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§6-§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr55:
                     this.§6-§.dispose();
                  }
                  do
                  {
                     this.§6-§ = null;
                  }
                  while(_loc1_);
                  
                  addr40:
               }
               return;
            }
            §§goto(addr55);
         }
         §§goto(addr40);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this);
            §§push(this.§-!8§);
            if(!_loc3_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§-!8§ = §§pop();
         }
      }
      
      public function §#F§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§-!8§ = param1;
         }
      }
      
      public function §,3§(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6-§.texture = param1;
         }
      }
   }
}
